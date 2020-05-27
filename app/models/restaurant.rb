class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  validates :name, presence: true, nul: false
  validates :address, presence: true  
  validates :category, presence: true, uniqueness: { case_sensitive: false }, :inclusion => { :in => %w[chinese italian japanese french belgian] }
  validates :phone_number, presence: true
end
