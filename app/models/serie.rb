class Serie < ApplicationRecord
  # ASSOCIATIONS
  # --------------------------------------------------------------------------------------------------
  has_many :books, dependent: :destroy


  # VALIDATIONS
  # --------------------------------------------------------------------------------------------------
	validates_uniqueness_of :name #, allow_blank: true

  # CALLBACKS
  # --------------------------------------------------------------------------------------------------
  before_save :format_name

  private

    def format_name
      self.name = name.strip if name.present?
    end
end
