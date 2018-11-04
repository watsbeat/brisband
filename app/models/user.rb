class User < ApplicationRecord
  rolify
  has_and_belongs_to_many :bands
  has_many :comments
  has_many :items
  has_one_attached :image
  
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
