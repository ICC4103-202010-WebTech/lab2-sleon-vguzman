class Event < ApplicationRecord
  has_many :Ticket
  has_one :Venue
end
