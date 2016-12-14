class Survey < ApplicationRecord

  belongs_to :creator, class_name: 'User'
  has_many :choices
  has_many :votes

  accepts_nested_attributes_for :choices, allow_destroy: true
end
