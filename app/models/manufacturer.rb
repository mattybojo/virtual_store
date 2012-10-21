# == Schema Information
#
# Table name: manufacturers
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  street       :string(255)
#  city         :string(255)
#  state        :string(255)
#  zip          :string(255)
#  country      :string(255)
#  description  :string(255)
#  phone_number :string(255)
#  email        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Manufacturer < ActiveRecord::Base
  attr_accessible :name

  has_many :products, :inverse_of => :manufacturer
end
