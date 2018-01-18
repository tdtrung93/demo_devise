class NewController < ApplicationController
	before_action :authenticate_user!, only: [:new]
	def new
	end

	def create		
	end

	def destroy		
	end

	def index
		@products = Product.all
	end
end
