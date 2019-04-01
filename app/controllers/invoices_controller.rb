class InvoicesController < ApplicationController
	before_action :authenticate_user!

  def index
    @invoices = Invoice.all
  end

	def new
		@invoice = Invoice.new
		@invoice.goods_details.build
	end

	def create
		@invoice = Invoice.new(invoice_params)
		if @invoice.save
		  redirect_to invoice_path(@invoice.id )
		else
		  render :new
		end
	end

  def show
    @invoice = Invoice.find_by id: params[:id] 
  end


  private
    def invoice_params
      params.require(:invoice).permit!
    end
end
