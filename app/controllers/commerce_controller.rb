class CommerceController < ApplicationController
  

  def products_grid
    @products = ProductList.all
  end

  def products_list
    @products = ProductList.all
  end

  def product_edit
  end

  def destroy
    @remove_product_from_cart = CartItem.find(params[:id])
    @remove_product_from_cart.destroy
    redirect_to "/commerce/cart"
  end

  def orders
    @order = OrderHistory.all 
  end

  def product_detail
  @product = ProductList.find(params[:id])
  end

  def payment
  end

  def cart
    @current_cart_product = current_cart.cart_items
  end

  def add_to_cart
   
    @product = ProductList.find(params[:id])
    current_cart.add_item(@product)
    redirect_to "/commerce/cart"
  end

end
