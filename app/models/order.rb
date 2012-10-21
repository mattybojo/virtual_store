# == Schema Information
#
# Table name: orders
#
#  id                :integer          not null, primary key
#  order_number      :string(255)
#  est_delivery_date :date
#  delivered_on      :datetime
#  subtotal          :integer
#  shipping_handling :integer
#  sales_tax         :integer
#  total             :integer
#  account_id        :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Order < ActiveRecord::Base
  attr_accessible :delivered_on, :delivery_date

  belongs_to :account, :inverse_of => :orders
  has_many :order_items
  has_many :products, :through => :order_items
  has_many :options, :through => :order_items
end
