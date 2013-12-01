class Book < ActiveRecord::Base
	require 'amazon/ecs'

  # ASSOCIATIONS
  # ------------------------------------------------------------------------------------------------------
  has_attached_file :cover,
                    storage: :google_drive,
                    google_drive_credentials: "#{Rails.root}/config/google_drive.yml",
                    styles: { thumb: "160x120>" }, default_url: "/images/:style/missing.png",
                    google_drive_options: {
                      folder_id: ENV['GOOGLE_DRIVE_PUBLIC_FOLDER_ID']
                    }
  

  # CALLBACKS
  # ------------------------------------------------------------------------------------------------------
  after_create :import_cover


  # VALIDATIONS
  # ------------------------------------------------------------------------------------------------------
	validates_uniqueness_of :isbn, allow_blank: true
  validates_presence_of :title


  # INSTANCE METHODS
  # ------------------------------------------------------------------------------------------------------
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