class Product < ActiveRecord::Base
  validates :name, presence: true
  has_many :perks, dependent: :destroy, inverse_of: :product
end
