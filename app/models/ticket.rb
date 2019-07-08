class Ticket < ApplicationRecord
  belongs_to :event
  belongs_to :order
  monetize :price_cents
  # , as:  "price"

  # validates_presence_of :suku, :description, :main_img, :tickets, :sold, :user_id , presence: true
  # def event_name
    # "#{event.title}"
  # end
end
