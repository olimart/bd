class Book < ApplicationRecord
	require 'amazon/ecs'

  # SEARCH
  # ------------------------------------------------------------------------------------------------------
  include PgSearch::Model
  pg_search_scope :search_by_keyword,
                  against: [:title, :tome, :author, :editor, :keywords],
                  using: {
                    tsearch: {
                      prefix: true # match any characters
                    }
                  },
                  ignoring: :accents


  # ASSOCIATIONS
  # ------------------------------------------------------------------------------------------------------
  belongs_to :serie, counter_cache: true # touch: true
  accepts_nested_attributes_for :serie, reject_if: :all_blank


  # SCOPES
  # ------------------------------------------------------------------------------------------------------
  scope :missing_isbn, -> { where(isbn: nil) }
  scope :with_isbn,    -> { where.not(isbn: nil) }


  # CALLBACKS
  # ------------------------------------------------------------------------------------------------------
  before_save :sync_keywords
  before_save :format_fields


  # VALIDATIONS
  # ------------------------------------------------------------------------------------------------------
	validates_uniqueness_of :isbn, allow_blank: true, message: 'existe déjà'
  validates_presence_of :title
  validates_uniqueness_of :tome, scope: :serie_id, allow_blank: true, message: 'existe déjà pour cette série'
  # validates_format_of :cover_url, with: URI::regexp(%w(http https)), allow_blank: true


  # INSTANCE METHODS
  # ------------------------------------------------------------------------------------------------------
  alias_attribute :asin, :isbn
  alias_attribute :amazon_id, :isbn

  def update_reading_status
  	self.read = !read
    self.save!
  end

  def import_cover
    if asin.present? && !cover.present?
      book = Amazon::Ecs.item_lookup(asin, opts = {response_group: 'Medium', country: 'fr'}).items.first
      if book.present?
        large_image_url = book.get('LargeImage/URL') if book.get_hash('LargeImage')
        self.cover = URI.parse(large_image_url)
        save!
      else
        puts "**** Error while importing cover for ASIN: #{asin} ****"
      end
    end
  end

  def clean_serie
    # conflicts with sync_keywords method, serie name
    if serie_id.present?
      self.serie.name = ""
    end
  end

  def self.import(file)
    # csv_file = file.read
    # CSV.parse(csv_file) do |row|
    #    book = Book.create(row.to_hash)
    #    book.save
    # end
    csv_file = file.read
    csv = CSV.parse(csv_file, headers: true)
    csv.each do |row|
      Book.create!(
        title: row[1],
        tome: row[2]
      )
    end
    # CSV.foreach(file.path, headers: true) do |row|
    #   book = find_by_id(row["id"]) || new
    #   book.attributes = row.to_hash.symbolize_keys #.slice(*accessible_attributes)
    #   book.save!
    # end
    # CSV.foreach(file.path, headers: true) do |row|
    #   record = Book.where(
    #     :category_id => category_id,
    #     :name => row[0]
    #   ).first_or_create
    # end
  end

  private

    def sync_keywords
      keywords = []
      keywords << "non lu" if !self.read
      keywords << "tome #{self.tome}" if self.tome.present?
      keywords << serie.name.downcase.to_s if serie_id.present?
      self.keywords = keywords.join(", ")
    end

    def format_fields
      self.isbn = self.isbn.tr('-', '') if isbn.present?
    end
end
