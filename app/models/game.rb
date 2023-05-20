class Game < ApplicationRecord
  has_many :game_participants, dependent: :destroy
  belongs_to :user

  #validates :address, :date, :time, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
