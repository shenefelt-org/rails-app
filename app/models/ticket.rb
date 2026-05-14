class Ticket < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true

  has_many :tech_ticket_responses, dependent: :destroy
  has_many :technicians, through: :tech_ticket_responses
end
