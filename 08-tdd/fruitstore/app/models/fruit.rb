# == Schema Information
#
# Table name: fruits
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#  type       :string
#

class Fruit < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :shelf

  def squishy?
    true
  end
end
