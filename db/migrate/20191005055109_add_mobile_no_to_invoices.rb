class AddMobileNoToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :mobile_no, :string, limit: 10
  end
end
