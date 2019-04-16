class Invoice < ApplicationRecord
    
    before_create :save_invoice_number
	has_many :goods_details, inverse_of: :invoice
	accepts_nested_attributes_for :goods_details, reject_if: :all_blank, allow_destroy: true

    def save_invoice_number
    Date.fy_start_month = 4
    a = Date.today.beginning_of_financial_year.strftime('%F')
    c = a.split("-")
    b = Date.today.end_of_financial_year.strftime('%F')
    d = b.split("-")
    e = c.first
    f = d.first.to_i
    goods = Invoice.where("DATE(created_at) >= ? AND DATE(created_at) <= ? ", a , b).count
    self.invoice_no = "#{e}/#{f%100}/%.3d" % "#{goods +1}"
    end
end