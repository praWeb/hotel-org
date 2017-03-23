class Api::CustomerResource < JSONAPI::Resource
  attributes :name, :email, :phone_number
end