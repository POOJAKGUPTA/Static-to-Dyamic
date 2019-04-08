class CommerceController < ApplicationController
  def products_grid
  end

  def products_list
    @products = ProductList.all
  end

  def product_edit
  end

  def orders
  end

  def product_detail
  end

  def payments
  end

  def cart
  end


end
