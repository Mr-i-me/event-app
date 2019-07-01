class Event < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many :tickets
  has_many :orders
end
