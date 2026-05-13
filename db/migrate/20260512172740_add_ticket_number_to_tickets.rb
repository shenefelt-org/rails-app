class AddTicketNumberToTickets < ActiveRecord::Migration[8.1]
  def change
    add_column :tickets, :ticket_num, :integer
  end
end
