class Ticket < ApplicationRecord
  belongs_to :event
  has_one :ticke_order
end
