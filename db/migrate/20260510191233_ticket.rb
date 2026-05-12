class Ticket < ActiveRecord::Migration[8.1]
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.string :status, default: 'open'
      t.integer :priority, default: 0

      t.timestamps
    end
  end
end
