class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_carts

  def after_sign_in_path_for(resource)
  	products_path
  end

  def after_sign_out_path_for(resource)
  	products_path
  end

    private

    def set_carts
        @carts = Cart.all
    end
end
