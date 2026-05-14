class TechTicket < ApplicationRecord
  belongs_to :technican
  belongs_to :ticket
end
