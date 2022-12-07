# == Schema Information
#
# Table name: movies
#
#  id         :bigint           not null, primary key
#  rating     :float
#  synopsis   :text
#  title      :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Movie < ApplicationRecord
  has_one_attached :poster
  validates_uniqueness_of :title, scope: [:synopsis]
  validates :rating, numericality: {
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 10
  }
end
