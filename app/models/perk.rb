class Perk < ActiveRecord::Base
  belongs_to :product, inverse_of: :perks
  validates :product, presence: true
end
