class Review < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :content, on: :create, message: "can't be blank"
  validates_presence_of :rating, on: :create, message: "can't be blank"
end
