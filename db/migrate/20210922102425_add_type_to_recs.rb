class AddTypeToRecs < ActiveRecord::Migration[6.0]
  def change
    add_column :recs, :type, :string
  end
end
