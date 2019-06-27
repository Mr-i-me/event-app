class Order < ApplicationRecord
  belongs_to :user
  has_many :tickets
  has_one :event, :throug => :tickets

end
