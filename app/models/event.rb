class Event < ApplicationRecord
    belongs_to :user
    has_many :tickets, dependent: :destroy
    validates :event_tickets, numericality: { greater_than_or_equal_to: 10,  only_integer: true }
  # has_many :orders
end
