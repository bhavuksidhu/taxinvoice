class GoodsDetail < ApplicationRecord
	belongs_to :invoice, optional: true
	validates :goods_desc, presence: true
	validates :hsn_acs_code, presence: true
	validates :quantity, presence: true, numericality: true
	validates :rate, presence: true, numericality: true
	validates :taxable_value, presence: true, numericality: true
end
