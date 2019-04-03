class Invoice < ApplicationRecord
	has_many :goods_details, inverse_of: :invoice
	accepts_nested_attributes_for :goods_details, reject_if: :all_blank, allow_destroy: true
	
	def serial_number
		# "2019/20/%.4d" % id
		# DateTime.now.year/DateTime.now.year % 100 + 1/"%.4d" % id
		binding.pry
		month = Date.today.month
		a =  Invoice.where("created_at < ? AND created_at > ?", "31 Mar #{Date.today.year}", "1 Apr #{Date.today.year+1}").count
		if month = 1 || 2 || 3
			"#{Date.today.year-1}/#{Date.today.year%100}/%.4d" %a
		else
			"#{Date.today.year}/#{Date.today.year%100+1}/%.4d" %a
		end
	end	

end
