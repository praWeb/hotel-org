class RoomsController < ApplicationController
  def index
  end

  def new

  end

  def room_params
    params.require(:room).permit(:number, :occupancy_status, :maintainence_status)
  end
end
