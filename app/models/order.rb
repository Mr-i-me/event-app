class Order < ApplicationRecord
  belongs_to :user
  belongs_to :ticket, dependent: :destroy
  monetize :price_cents
end
