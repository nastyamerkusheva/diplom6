class Address < ApplicationRecord
  has_many :characteristics , inverse_of: :address
  validates :name, presence: true, uniqueness: true
end
