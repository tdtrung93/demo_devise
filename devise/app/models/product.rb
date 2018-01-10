class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :carts
	has_many :users, through: :carts
	def index
	end
end
