class Api::V1::RoomResource < JSONAPI::Resource
  attributes :number, :occupancy_status, :maintainence_required
end