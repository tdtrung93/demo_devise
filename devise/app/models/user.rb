class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 has_many :carts
 has_many :products, through: :carts         
 def admin?
 	if self.admin == 1
 		return true
 	end
 	return false
 end
end
