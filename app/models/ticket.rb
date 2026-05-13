class Ticket < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true

    has_many :tech_tickets, dependent: :destroy
    has_many :technicans, through: :tech_tickets
    
end
