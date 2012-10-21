# == Schema Information
#
# Table name: order_items
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  product_id :integer
#  option_id  :integer
#  price      :integer
#

class OrderItem < ActiveRecord::Base
  attr_accessible :product_id

  belongs_to :product
  belongs_to :order
  belongs_to :option
end
