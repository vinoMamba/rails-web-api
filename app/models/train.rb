class Train < ApplicationRecord
  validates_presence_of :number
  has_many :reservations

  def available_seats
    # ["1A", "1B", "1C", "1D", "1E", "1F"]
    %w[1A 1B 1C 1D 1E 1F]
  end
end
