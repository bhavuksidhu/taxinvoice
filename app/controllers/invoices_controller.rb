class InvoicesController < ApplicationController
	before_action :authenticate_user!

	def new
		@invoice = Invoice.new
		@invoice.goods_details.build
	end

	def create
		@invoice = Invoice.new(invoice_params)
		if @invoice.save
		  redirect_to new_invoice_path
		else
		  render :new
		end
	end

	def invoice_params
		params.require(:invoice).permit(:buyer_name, :buyer_address, :buyer_gstin_no, :transportation_mode, :vehicle_no, :supply_date_time, :supply_place, :total_taxable_value, :total_taxable_value,:cgst, :tot_cgst, :sgst, :tot_sgst, :igst, :tot_igst, :cartage, :invoice_total, goods_details_attributes: [:id, :_destroy, :goods_desc, :hsn_acs_code, :quantity, :rate, :taxable_value])
	end
end
