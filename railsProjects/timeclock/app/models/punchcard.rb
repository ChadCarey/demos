class Punchcard < ActiveRecord::Base
	include ActiveModel::Validations
	validates :timein, :timeout, :user_id, presence: true
	validates :timein, :timeout, numericality: true
	validate :check_valid

	def check_valid
		if (timein < timeout and timein >= 0 and timeout < 24)
			return true
		else
			errors.add(:timein, "Invalid time entered. \n\tTime in: #{timein} \n\tTime out: #{timeout}")
			return false
		end
	end

end
