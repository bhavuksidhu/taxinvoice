class Invoice < ApplicationRecord
	has_many :goods_details, inverse_of: :invoice
	accepts_nested_attributes_for :goods_details, reject_if: :all_blank, allow_destroy: true
		
end
