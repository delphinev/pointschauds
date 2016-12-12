class Survey < ApplicationRecord

  belongs_to :creator, class_name: 'User'
  has_many :choices

  accepts_nested_attributes_for :choices
end
