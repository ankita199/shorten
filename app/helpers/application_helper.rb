module ApplicationHelper

	def comma_seperated(values)
		values.reject(&:blank?).join(",")
	end
end
