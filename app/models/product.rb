class Product < ApplicationRecord
  #associations
  belongs_to :category
  has_many :line_items
  # image uploader
  mount_uploader :image, ImageUploader

end
