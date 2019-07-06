class Boleto < ApplicationRecord
	belongs_to :user
	validates %i[sku value expiration_date]
end
