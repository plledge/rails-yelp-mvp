class Restaurant < ApplicationRecord
  has_many :reviews
  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_presence_of :address, on: :create, message: "can't be blank"
  validates_presence_of :category, on: :create, message: "can't be blank"
  validates :rating, :inclusion => { :in => 0..5 }
end
