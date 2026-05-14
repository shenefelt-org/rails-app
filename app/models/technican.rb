class Technican < ApplicationRecord
    validates :name, presence: true

    has_many :tech_ticket_responses, dependent: :destroy
    has_many :tickets, through: :tech_ticket_responses
end
