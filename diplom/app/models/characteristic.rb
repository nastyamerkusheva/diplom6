class Characteristic < ApplicationRecord
  belongs_to :address, inverse_of: :characteristics
  belongs_to :information_system, inverse_of: :characteristics
  accepts_nested_attributes_for :address, allow_destroy: true

  has_many :part_of_characteristics

  # , inverse_of: :characteristics

  validates :name, presence: true
  validates :type_of_data,  presence: true
  validates :result_type,  presence: true

end
