namespace :taxinvoice do
 desc "update project created_at for invoice date"
 task :update_invoice_date => :environment do
   Invoice.all.each do |invoice|
     invoice.update(invoice_date: invoice.created_at)
   end
 end
end