class Perk < ActiveRecord::Base
  belongs_to :product
  validates :product, presence: true
end
