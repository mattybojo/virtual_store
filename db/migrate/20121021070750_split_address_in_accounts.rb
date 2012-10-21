class SplitAddressInAccounts < ActiveRecord::Migration
  def up
    remove_column :accounts, :bill_address
    remove_column :accounts, :ship_address
    add_column :accounts, :billing_street, :string
    add_column :accounts, :billing_city, :string
    add_column :accounts, :billing_state, :string
    add_column :accounts, :billing_zip, :string
    add_column :accounts, :billing_country, :string
    add_column :accounts, :shipping_street, :string
    add_column :accounts, :shipping_city, :string
    add_column :accounts, :shipping_state, :string
    add_column :accounts, :shipping_zip, :string
    add_column :accounts, :shipping_country, :string
  end

  def down
    remove_column :accounts, :shipping_country
    remove_column :accounts, :shipping_zip
    remove_column :accounts, :shipping_state
    remove_column :accounts, :shipping_city
    remove_column :accounts, :shipping_street
    remove_column :accounts, :billing_country
    remove_column :accounts, :billing_zip
    remove_column :accounts, :billing_state
    remove_column :accounts, :billing_city
    remove_column :accounts, :billing_street
    add_column :accounts, :ship_address
    add_column :accounts, :bill_address
  end
end
