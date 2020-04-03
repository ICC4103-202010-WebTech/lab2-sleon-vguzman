class Event < ApplicationRecord
  has_many :tickets
  has_one :venue
end
