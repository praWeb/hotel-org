class Api::RoomResource < JSONAPI::Resource
  attributes :number, :occupancy_status, :maintainence_status
end