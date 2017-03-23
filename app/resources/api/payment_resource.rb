class Api::PaymentResource < JSONAPI::Resource
  attributes :advance_paid, :total

  has_one :room_allocation
end