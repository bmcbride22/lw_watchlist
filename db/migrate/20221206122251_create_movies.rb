class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :synopsis
      t.float :rating
      t.string :url

      t.timestamps
    end
  end
end
