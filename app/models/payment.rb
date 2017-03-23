class Payment < ApplicationRecord
  # property :advance_paid, :integer
  # property :total, :integer

  belongs_to :room_allocation
end