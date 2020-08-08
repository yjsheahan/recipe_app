class Recipe < ApplicationRecord
  has_one_attached :image
  has_many :ingredients, dependent: :destroy
  has_many :directions, dependent: :destroy
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
