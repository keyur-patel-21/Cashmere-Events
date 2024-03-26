class User < ApplicationRecord
  devise :two_factor_authenticatable
  rolify
  
  after_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :registerable,
  :recoverable, :rememberable, :validatable, :confirmable
  validates :phone_number, phone: true
  
  def to_s
    email
  end
  
  after_create do
    customer = Stripe::Customer.create(email: email)
    update(stripe_customer_id: customer.id)
  end

  # To add default role to new signed_up users
  def assign_default_role
    if AdminUser.find_by(email: self.email)
      self.add_role(:admin)
    else
      self.add_role(:newuser)
    end
  end
end
