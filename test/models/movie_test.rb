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
require "test_helper"

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
