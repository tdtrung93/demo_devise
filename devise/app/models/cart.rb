class Cart < ApplicationRecord
	belongs_to :user
	belongs_to :product
	def index
	end
end
