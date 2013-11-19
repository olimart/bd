class Book < ActiveRecord::Base
	require 'amazon/ecs'

  # ---------------------------------------------------
  # relationships
  # ---------------------------------------------------
  has_attached_file :cover,
                    styles: { thumb: "160x120>" }, default_url: "/images/:style/missing.png"
  
  # ---------------------------------------------------
  # callbacks
  # ---------------------------------------------------
  after_create :import_cover

	# ---------------------------------------------------
  # validations
  # ---------------------------------------------------
	validates_uniqueness_of :isbn, allow_blank: true
  validates_presence_of :title

  # ---------------------------------------------------
  # instance methods
  # ---------------------------------------------------
  alias_attribute :asin, :isbn

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

end