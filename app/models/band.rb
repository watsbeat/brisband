class Band < ApplicationRecord
    has_and_belongs_to_many :users

    def can_edit?(user)
        self.user == user   
    end
      
    def can_destroy?(user)
        self.user == user || user.has_role?(:admin) 
    end

end
