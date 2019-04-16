class RemovedatetimeFromInvoice < ActiveRecord::Migration[5.1]
  def change
  	remove_column :invoices, :datetime, :string
  end
end
