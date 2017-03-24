class Api::V1::PaymentResource < JSONAPI::Resource
  attributes :advance_paid, :total

  has_one :room_allocation
end