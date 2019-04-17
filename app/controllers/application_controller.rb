class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :all_orders

  def all_orders
  @order = OrderHistory.all
  end

	

	def current_cart
		if current_user.carts.where(is_ordered: false).last
			return current_user.carts.where(is_ordered: false).last
		else
			return current_user.carts.create
		end
	end
	
	helper_method :current_cart





end
