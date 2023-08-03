class Customer < ApplicationRecord
      validates :name, presence: true, length: { minimum: 3 }
      validates   :surname, presence: true, length: { minimum: 3 }
      validates :email, presence: true, length: { minimum: 5 }
  end
  