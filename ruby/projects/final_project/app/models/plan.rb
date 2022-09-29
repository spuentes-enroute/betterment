class Plan < ApplicationRecord
  has_many :articles

  monetize :price
end
