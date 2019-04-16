class AddInvoiceDateToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :invoice_date, :datetime
  end
end
