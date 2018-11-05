class Comment < ApplicationRecord
    belongs_to :item
    belongs_to :user

    def can_edit?(user)
        self.user == user   
    end
      
    def can_destroy?(user, item)
        self.user == user || user.has_role?(:admin) || item.user == user
    end
end
