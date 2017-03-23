class PaymentTable < ActiveRecord::Migration[5.1]
  def change
    create_table :payments_tables do |t|
      t.integer :advance_paid
      t.integer :total, null: false
      t.belongs_to :room_allocation
    end
  end
end
