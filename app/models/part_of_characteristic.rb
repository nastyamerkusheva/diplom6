class PartOfCharacteristic < ApplicationRecord
  belongs_to :characteristic
  has_many :weights,  :dependent => :destroy
  has_many :characteristic_values
  validates :pid, presence: true
  validates :part_name, presence: true
end
