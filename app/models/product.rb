class Product < ActiveRecord::Base
  validates :name, presence: true
  has_many :perks
end
