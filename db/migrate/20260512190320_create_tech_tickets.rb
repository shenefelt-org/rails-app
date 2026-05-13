class CreateTechTickets < ActiveRecord::Migration[8.1]
  def change
    create_table :tech_tickets do |t|
      t.references :technican, null: false, foreign_key: true
      t.references :ticket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
