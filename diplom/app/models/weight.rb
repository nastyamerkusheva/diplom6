class Weight < ApplicationRecord
  belongs_to :part_of_characteristic,  :dependent => :destroy


validates :name, presence:true
validates :weight_val, presence:true
end
