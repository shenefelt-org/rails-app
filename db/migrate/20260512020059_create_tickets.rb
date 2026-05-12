class CreateTickets < ActiveRecord::Migration[8.1]
  def change
    drop_table :tickets, if_exists: true
    create_table :tickets do |t|
      t.string :title
      t.text :body
      t.string :status
      t.string :priority
      t.timestamps
    end
  end
end
