class InvoicesController < ApplicationController

	def new
		@invoice = Invoice.new
		@invoice.goods_details.build
	end

	def create
		@invoice = Invoice.new(invoice_params)
		if @invoice.save
      redirect_to home_index_path
    else
      render :new
    end
	end

	def invoice_params
		params.require(:invoice).permit(:buyer_name, :buyer_address, :buyer_gstin_no, :transportation_mode, :vehicle_no, :supply_date_time, :supply_place, goods_details_attributes: [:id, :destroy, :goods_desc, :hsn_acs_code, :quantity, :rate])
	end
end
