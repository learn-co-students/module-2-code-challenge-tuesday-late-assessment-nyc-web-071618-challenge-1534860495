class Guest < ApplicationRecord
  has_many :appearances
  has_many :episode, through: :appearances
end
