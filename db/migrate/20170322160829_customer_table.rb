class CustomerTable < ActiveRecord::Migration[5.1]
  def change
    create_table :customers_tables do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :phone_number
    end
  end
end
