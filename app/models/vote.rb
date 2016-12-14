class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :choice
  belongs_to :survey
end
