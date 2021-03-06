class User < ActiveRecord::Base
	include PublicActivity::Model
  tracked  owner: ->(controller, model) { controller.current_user }


	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   mount_uploader :image, AvatarUploader

	has_many :carts
	has_many :wishlists
end
