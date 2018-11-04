class Item < ApplicationRecord
    has_many :comments
    belongs_to :user
    has_one_attached :image

    def can_edit?(user)
        self.user == user   
    end

    def can_destroy?(user)
        self.user == user || user.has_role?(:admin) 
    end

    def price_in_cents
        (self.price * 100).to_i
    end

    def purchased(user)
        self.for_sale = false
        self.user_id = user.id
        self.save
    end
end
