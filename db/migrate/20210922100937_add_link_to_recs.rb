class AddLinkToRecs < ActiveRecord::Migration[6.0]
  def change
    add_column :recs, :link, :string
  end
end
