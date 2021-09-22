class ChangeDataTypeForFormMessage < ActiveRecord::Migration[6.0]
  def change
    change_column :forms, :message, :text
  end
end
