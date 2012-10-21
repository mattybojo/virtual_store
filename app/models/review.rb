# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  rating     :integer
#  text       :string(255)
#  account_id :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ActiveRecord::Base
  attr_accessible :account_id
end
