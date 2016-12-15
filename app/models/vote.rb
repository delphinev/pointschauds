class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :choice
  belongs_to :survey

  validates :choice, presence: true

  def self.create_from_participation(user, survey, choice)
    self.create(user_id: user, survey_id: survey, choice_id: choice)
  end
end
