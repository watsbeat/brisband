class Band < ApplicationRecord
    has_and_belongs_to_many :users
    has_one_attached :image

    def can_edit?(user)
        self.users.include?(user)
    end
      
    def can_destroy?(user)
        self.users.include?(user) || user.has_role?(:admin) 
    end

    def remove_user(user)
        if self.users.include?(user)
            self.users.delete(user)
        end
    end

    def self.search(search)
        if search
            where(["name LIKE ?", "%#{search}%"])
        else
            all
        end
    end
end
