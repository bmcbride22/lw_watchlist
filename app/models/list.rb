# == Schema Information
#
# Table name: lists
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class List < ApplicationRecord
  validates_uniqueness_of :name
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end
