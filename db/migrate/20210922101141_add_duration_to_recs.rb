class AddDurationToRecs < ActiveRecord::Migration[6.0]
  def change
    add_column :recs, :duration, :integer
  end
end
