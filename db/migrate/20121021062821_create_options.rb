class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.integer :added_price
      t.string :description
      t.integer :product_id

      t.timestamps
    end
  end
end
