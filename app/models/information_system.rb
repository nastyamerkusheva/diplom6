class InformationSystem < ApplicationRecord
  has_many :characteristics, inverse_of: :information_system

  accepts_nested_attributes_for :characteristics, allow_destroy: true

  accepts_nested_attributes_for :characteristics, allow_destroy: true
  has_many :characteristics, inverse_of: :information_system
  # This file is auto-generated from the current state of the database. Instead

  validates :name, presence: true, uniqueness: true


end
