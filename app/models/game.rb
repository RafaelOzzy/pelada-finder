class Game < ApplicationRecord
  has_many :game_participants, dependent: :destroy
  belongs_to :user

  validates :address, :date, :time, presence: true
end
