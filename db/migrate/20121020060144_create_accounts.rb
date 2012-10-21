class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :password
      t.string :bill_address
      t.string :ship_address
      t.string :home_phone
      t.string :cell_phone
      t.string :email

      t.timestamps
    end
  end
end
