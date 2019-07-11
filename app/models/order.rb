class Order < ApplicationRecord
  belongs_to :ticket
  belongs_to :user
  monetize :amount_cents

end
