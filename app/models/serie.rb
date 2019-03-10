class Serie < ApplicationRecord
  # ASSOCIATIONS
  # ------------------------------------------------------------------------------------------------------
  has_many :books, dependent: :destroy


  # VALIDATIONS
  # ------------------------------------------------------------------------------------------------------
	validates_uniqueness_of :name #, allow_blank: true
end
