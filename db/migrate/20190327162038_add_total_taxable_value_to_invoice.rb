class AddTotalTaxableValueToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :total_taxable_value, :float
  end
end
