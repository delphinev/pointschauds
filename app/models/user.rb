class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :registerable, :confirmable

  has_many :surveys, foreign_key: :creator_id
end
