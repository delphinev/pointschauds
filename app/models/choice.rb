class Choice < ApplicationRecord
  belongs_to :survey, optional: true
  has_many :votes
end
