class CartsController < ApplicationController

	def index
		@carts = current_user.carts
	end

	def new		
		@cart = Cart.new
	end

	def create
		product_id = params[:product_id]
		user_id = current_user.id
		@cart = Cart.new({:product_id => product_id, :user_id => user_id})
		@cart.save
		quantity_cart = current_user.carts.count
		respond_to do |format|
		  format.json {render json: {quantity_cart: quantity_cart, cart: @cart.as_json(:include => :product)}}
		end
	end

	def edit
		@cart = Cart.find(params[:id])
	end

	def show
		@cart = Cart.find(params[:id])
	end

	def total_cart
		user_id.sum(:user_id)
	end

	def update
	end

	def destroy
		@cart = Cart.find(params[:id])
		@cart.destroy
		quantity_cart = current_user.carts.count
		respond_to do |format|
		  format.json {render json: {quantity_cart: quantity_cart, cart: @cart}}
		end
	end
end
