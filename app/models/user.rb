class User < ApplicationRecord
  rolify
  has_many :comemnts
  has_many :items
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def can_edit?(user)
    self.user == user   
  end
  
  def can_destroy?(user)
    self.user == user || user.has_role?(:admin) 
  end
end
