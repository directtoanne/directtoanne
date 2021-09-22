class ChangeTypeColumnToCategoryColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :recs, :type, :category
  end
end
