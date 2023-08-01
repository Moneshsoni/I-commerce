class Product < ApplicationRecord
    belongs_to :seller
    def active_as_yes_no
        acts_like ? 'Yes' : 'No'
    end
end
