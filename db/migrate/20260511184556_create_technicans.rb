class CreateTechnicans < ActiveRecord::Migration[8.1]
  def change
    create_table :technicans do |t|
      t.string :name
      t.string :role

      t.timestamps
    end
  end
end
