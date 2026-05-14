class CreateTechTicketResponses < ActiveRecord::Migration[8.1]
  def change
    create_table :tech_ticket_responses do |t|
      t.references :technican, null: false, foreign_key: true
      t.references :ticket, null: false, foreign_key: true
      t.text :response_text, null: false
      t.timestamps
    end
  end
end
