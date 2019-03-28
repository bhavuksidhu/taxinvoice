class Invoice < ApplicationRecord
	has_many :goods_details, inverse_of: :invoice
	accepts_nested_attributes_for :goods_details, reject_if: :all_blank, allow_destroy: true
	validates :buyer_name, :buyer_address, :buyer_gstin_no, :transportation_mode, :vehicle_no, :supply_date_time, :supply_place, presence: true
	validates :total_taxable_value, :cgst, :tot_cgst, :sgst, :tot_sgst, :igst, :tot_igst, :cartage, :invoice_total, presence: true, numericality: true

end
