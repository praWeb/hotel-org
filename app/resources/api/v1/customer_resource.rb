class Api::V1::CustomerResource < JSONAPI::Resource
  attributes :name, :email, :phone_number
end