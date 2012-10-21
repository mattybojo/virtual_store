# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  price           :integer
#  description     :string(255)
#  sku             :string(255)
#  type            :string(255)
#  in_stock        :boolean
#  manufacturer_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :manufacturer_id

  belongs_to :manufacturer, :inverse_of => :products
  has_many :order_items, :dependent => :destroy
  has_many :orders, :through => :order_items
  has_many :options, :through => :order_items
end
