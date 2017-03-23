class CreateRoomAllocationTable < ActiveRecord::Migration[5.1]
  def change
    create_table :room_allocations_tables do |t|
      t.belongs_to :room, index:true, null: false
      t.belongs_to :customer, null: false
      t.belongs_to :payment
      t.timestamp :check_in, null: false
      t.timestamp :check_out, null: false
    end
  end
end
