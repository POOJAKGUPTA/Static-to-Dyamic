class AppviewsController < ApplicationController

  def contacts
    @user = User.all
  end

  def profile
    @user = User.all
    @user = User.find(params[:id])
     @activities = PublicActivity::Activity.all

      @user_traking = PublicActivity::Activity.where(trackable_type: "User", owner_id: current_user.id)
      @cart_traking = PublicActivity::Activity.where(trackable_type: "CartItem")
      @wishlist_traking = PublicActivity::Activity.where(trackable_type: "WishlistItem")
      # If we want to use the same by making scope than un comment the following code and thean uncommet the code in activity.rb
     # @user_traking = Activity.traking("User")
     # @cart_traking = Activity.traking("CartItem")
     # @wishlist_traking = Activity.traking("WishlistItem")
     



  end
  def index
  @activities = PublicActivity::Activity.all
  end

  def show
   
  end


  def update_profile
    @my_user_for_update = current_user
  end

  def update_my_profile
    @user = User.find(params[:updating_user_id])
    @user.update(first_name: params[:asheesh][:my_first_name] ,last_name: params[:asheesh][:my_last_name], phone: params[:asheesh][:my_phone_no],company: params[:asheesh][:company],permanent_address: params[:asheesh][:my_permanent_address],current_address: params[:asheesh][:my_current_address] ,about: params[:asheesh][:my_about],role: params[:asheesh][:my_role],image: params[:asheesh][:image])
    
    redirect_to "/appviews/show"
  end
  
  def profile_two
  end

  def contacts_two
  end

  def projects
  end

  def project_detail
  end

  def file_manager
  end

  def vote_list
  end

  def calendar
  end

  def faq
  end

  def timeline
  end

  def pin_board
  end

  def teams_board
  end

  def clients
  end

  def outlook_view
    render :layout => "layout_3"
  end

  def issue_tracker
  end

  def blog
  end

  def article
  end

end
