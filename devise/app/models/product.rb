class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :carts
	has_many :users, through: :carts
  	extend FriendlyId
	friendly_id :name, use: [:slugged, :finders]
	def index
	end
end
