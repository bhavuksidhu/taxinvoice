class GoodsDetail < ApplicationRecord
	belongs_to :invoice, optional: true
end
