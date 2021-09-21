class CreateRecs < ActiveRecord::Migration[6.0]
  def change
    create_table :recs do |t|
      t.string :title
      t.string :synopsis
      t.string :why
      t.decimal :imdb_rating
      t.decimal :rt_rating
      t.string :creator
      t.date :release_date

      t.timestamps
    end
  end
end
