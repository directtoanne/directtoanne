class ChangeDataTypeForRecColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :recs, :why, :text
    change_column :recs, :synopsis, :text
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
