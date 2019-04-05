class InvoicesController < ApplicationController
	before_action :authenticate_user!
  before_action :find_invoice, only: [:edit, :update, :show]

  def index
    @invoices = Invoice.all.paginate(:page => params[:page], :per_page => 50)
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

  def send_invoice
    email = params[:email]
    invoice = Invoice.find(params[:invoice_id])
    InvoiceMailer.welcome(email, invoice).deliver
    
  end

  def show
    invoice_name = @invoice.invoice_no
    respond_to do |format|
      format.html
      format.pdf do
        @pdf = render_to_string(pdf: invoice_name, template: "invoices/pdf.html.erb", :locals => {invoice: @invoice})
        send_data(@pdf, :filename => invoice_name, :type=>"application/pdf", disposition: "inline")
      end
    end
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
      @invoice = Invoice.find(params[:id])
    end

end