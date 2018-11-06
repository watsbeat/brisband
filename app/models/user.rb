class User < ApplicationRecord
  rolify
  after_create :assign_basic_role
  has_and_belongs_to_many :bands
  has_many :comments, dependent: :destroy
  has_many :items, dependent: :destroy
  has_one_attached :image
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_messageable

  def assign_basic_role
    self.add_role(:basic) if self.roles.blank?
  end

  def mailboxer_email(object)
    self.email
  end

  def can_edit?(user)
    self == user   
  end
  
  def can_destroy?(user)
    self == user || user.has_role?(:admin) 
  end
end
