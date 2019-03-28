class AddTotalTaxableValueToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :total_taxable_value, :float
    add_column :invoices, :cgst, :float
    add_column :invoices, :tot_cgst, :float
    add_column :invoices, :sgst, :float
    add_column :invoices, :tot_sgst, :float
    add_column :invoices, :igst, :float
    add_column :invoices, :tot_igst, :float
    add_column :invoices, :cartage, :float
    add_column :invoices, :invoice_total, :float


  end
end
