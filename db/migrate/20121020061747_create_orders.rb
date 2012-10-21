class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_number
      t.date :est_delivery_date
      t.datetime :delivered_on
      t.integer :subtotal
      t.integer :shipping_handling
      t.integer :sales_tax
      t.integer :total
      t.integer :account_id

      t.timestamps
    end
  end
end
