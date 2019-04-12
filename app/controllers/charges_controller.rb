class ChargesController < ApplicationController
rescue_from Stripe::CardError, with: :catch_exception
  
  def new
  end

  def create

  	cart = Cart.find(params[:cart_id])

  	# product = cart_item.product_list
  	# cart = cart_item.product_list

    # customer = Stripe::Customer.create(
    #   email: params[:stripeEmail],
    #   source: params[:stripeToken]
    # )

  	
    @charge = Stripe::Charge.create({
					  amount: cart.total*100,
					  currency: 'usd',
					  source: params[:stripeToken], # obtained with Stripe.js
					  description: "#{current_user.email} has purchased product  ",
					})
    	if @charge
        @order_history = OrderHistory.new(txn_id: @charge.balance_transaction, charge_id: @charge.id,cart_id: cart.id)
      else
      	redirect_to :back
      end 
    
    @order_history.save
    Cart.find(cart.id).update(is_ordered: true)
		redirect_to "/commerce/product_detail"
  end

  private

  def charges_params
    params.permit(:stripeEmail, :stripeToken, :order_id)
  end

  def catch_exception(exception)
    flash[:error] = exception.message
  end

end


