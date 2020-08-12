class Recipe < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :ingredients, dependent: :destroy
  has_many :directions, dependent: :destroy
  validates :title, presence: true
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
