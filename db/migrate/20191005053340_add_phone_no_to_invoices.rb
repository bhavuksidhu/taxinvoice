class AddPhoneNoToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :phone_no, :integer
  end
end
