class RemovedatetimeFromInvoice < ActiveRecord::Migration[5.1]
  def change
  	add_column :invoices, :datetime, :string
  	remove_column :invoices, :datetime, :string
  end
end
