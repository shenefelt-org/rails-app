class Technican < ApplicationRecord
    validates :name, presence: true

    has_many :tech_tickets, dependent: :destroy
    has_many :tickets, through: :tech_tickets
end
