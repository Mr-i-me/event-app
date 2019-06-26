class Boleto < ApplicationRecord
	belongs_to :user
	validates_presence_of :value, :sku, :expiration_date
end
