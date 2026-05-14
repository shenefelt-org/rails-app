class TechTicketResponse < ApplicationRecord
    belongs_to :technican
    belongs_to :ticket
end
