class Ticket < ApplicationRecord
  belongs_to :event
  # validates_presence_of :suku, :description, :main_img, :tickets, :sold, :user_id , presence: true
end
