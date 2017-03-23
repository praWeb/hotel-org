class Api::RoomAllocationResource < JSONAPI::Resource
  attributes :checkin_in, :check_out
  has_one :payment
  has_many :customers
  has_many :rooms

end