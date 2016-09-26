# == Schema Information
#
# Table name: types
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Type < ApplicationRecord
  has_and_belongs_to_many :products
end
