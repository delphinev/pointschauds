class Choice < ApplicationRecord
  belongs_to :survey, optional: true
end
