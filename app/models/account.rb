# == Schema Information
#
# Table name: accounts
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  password         :string(255)
#  home_phone       :string(255)
#  cell_phone       :string(255)
#  email            :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  billing_street   :string(255)
#  billing_city     :string(255)
#  billing_state    :string(255)
#  billing_zip      :string(255)
#  billing_country  :string(255)
#  shipping_street  :string(255)
#  shipping_city    :string(255)
#  shipping_state   :string(255)
#  shipping_zip     :string(255)
#  shipping_country :string(255)
#

class Account < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :orders, :inverse_of => :account
end
