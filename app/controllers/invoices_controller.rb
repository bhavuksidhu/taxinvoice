class InvoicesController < ApplicationController
	before_action :authenticate_user!

	def new
		@invoice = Invoice.new
		@invoice.goods_details.build
	end

	def create
		@invoice = Invoice.new(invoice_params)
		if @invoice.save
		  redirect_to invoice_path(@invoice.id, format: :pdf)
		else
		  render :new
		end
	end

	def invoice_params
		params.require(:invoice).permit(:buyer_name, :buyer_address, :buyer_gstin_no, :transportation_mode, :vehicle_no, :supply_date_time, :supply_place, :total_taxable_value, :total_taxable_value,:cgst, :tot_cgst, :sgst, :tot_sgst, :igst, :tot_igst, :cartage, :invoice_total, goods_details_attributes: [:id, :_destroy, :goods_desc, :hsn_acs_code, :quantity, :rate, :taxable_value])
	end

  def show
    @invoice = Invoice.find_by id: params[:id] 
    @invoice_name = get_invoice_name
    respond_to do |format|
      format.html
      format.pdf do
        @pdf = render_to_string pdf_params
        send_data(@pdf, :filename => @invoice_name,  :type=>"application/pdf", disposition: "inline")
      end
    end
  end
  # Open invoice in browser in pdf format for printing invoice


  private
    def get_invoice_name
      return "abcd"
    end

    def pdf_params
      return {
        pdf: get_invoice_name,
        template: "invoices/show.html.erb",
        zoom: 1.23 ,
        dpi: 75,
        lowquality: true
      }
    end
end
