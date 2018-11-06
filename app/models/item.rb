class Item < ApplicationRecord
    has_many :comments, dependent: :destroy
    belongs_to :user
    has_many_attached :images

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
    def self.search(search)
        if search
            where(["name LIKE ?", "%#{search}%"])
        else
            all
        end
    end
end
