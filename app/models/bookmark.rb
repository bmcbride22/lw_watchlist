# == Schema Information
#
# Table name: bookmarks
#
#  id         :bigint           not null, primary key
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  list_id    :bigint           not null
#  movie_id   :bigint           not null
#
# Indexes
#
#  index_bookmarks_on_list_id   (list_id)
#  index_bookmarks_on_movie_id  (movie_id)
#
# Foreign Keys
#
#  fk_rails_...  (list_id => lists.id)
#  fk_rails_...  (movie_id => movies.id)
#
class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_presence_of :comment
  validates :comment, length: { min: 6 }
end
