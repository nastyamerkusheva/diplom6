class CharacteristicValue < ApplicationRecord
  belongs_to :part_of_characteristic
  belongs_to :person

    validates :value, presence: true
    validates :vdate, presence: true
    validates :vtime, presence: true

end
