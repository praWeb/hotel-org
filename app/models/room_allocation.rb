class RoomAllocation < ApplicationRecord
  # property :check_in, :timestamp
  # property :check_out, :timestamp

  has_one :payment
  has_many :rooms
  has_many :customers
end