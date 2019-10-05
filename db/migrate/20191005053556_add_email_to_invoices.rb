class AddEmailToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :email, :string
  end
end
