class AddProfilePicUrlToTechnicans < ActiveRecord::Migration[8.1]
  def change
    add_column :technicans, :profile_pic, :string, null: true
  end
end
