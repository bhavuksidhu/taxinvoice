class AddNameToInvoices < ActiveRecord::Migration[5.1]
  def change
  	add_column :invoices, :buyer_name, :string
  	add_column :invoices, :buyer_address, :string
  	add_column :invoices, :buyer_gstin_no, :string
  	add_column :invoices, :transportation_mode, :string
  	add_column :invoices, :vehicle_no, :string
  	add_column :invoices, :supply_date_time, :datetime
  	add_column :invoices, :supply_place, :string
  end
end
