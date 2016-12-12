class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :registerable, :confirmable
end
