# == Schema Information
#
# Table name: options
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  added_price :integer
#  description :string(255)
#  product_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Option < ActiveRecord::Base
  attr_accessible :name

  has_many :order_items
  has_many :orders, :through => :order_items
  has_many :products, :through => :order_items
end
