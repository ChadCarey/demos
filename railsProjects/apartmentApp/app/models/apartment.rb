

class Apartment < ActiveRecord::Base
	validates :cost, :bedrooms, :bathrooms, :pay_period, presence: true
	validates :bedrooms, :bathrooms, :cost, numericality: true
	validates :cost, :bedrooms, :bathrooms, numericality: { greater_than_or_equal_to: 0 }
	validates :pay_period, inclusion: { in: %w(monthly by_semester) }
end
