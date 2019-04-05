class InvoiceMailer < ApplicationMailer
	def welcome(recipient, invoice)
		pdf_html = ActionController::Base.new.render_to_string(template: 'invoices/pdf', :locals => {invoice: invoice})
    pdf = WickedPdf.new.pdf_from_string(pdf_html)
			attachments["#{invoice.invoice_no}.pdf"] = pdf
    mail(:to => recipient, :subject => "New account information")
  end
end
