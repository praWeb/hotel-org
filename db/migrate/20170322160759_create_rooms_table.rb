class CreateRoomsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms_tables do |t|
      t.integer :number, null: false, index: true
      t.boolean :occupancy_status, default: false,  null: false, index: true
      t.boolean :maintainence_required, default: false, null: false,  index: true
    end
  end
end
