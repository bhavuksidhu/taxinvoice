class InvoicesController < ApplicationController
	before_action :authenticate_user!
  before_action :find_invoice, only: [:edit, :update, :show]

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
		  redirect_to invoice_path(@invoice.id)
		else
		  render :new
		end
	end

  def show
  end

  def edit
  end

  def update
    if @invoice.update(invoice_params)
      redirect_to invoice_path(@invoice)
    else
      render :edit
    end
  end


  private
    def invoice_params
      params.require(:invoice).permit!
    end

    def find_invoice
      @invoice = Invoice.find_by id: params[:id]
    end
end
