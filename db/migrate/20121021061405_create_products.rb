class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :sku
      t.string :type
      t.boolean :in_stock
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
