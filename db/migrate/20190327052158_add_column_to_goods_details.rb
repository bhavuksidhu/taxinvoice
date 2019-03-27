class AddColumnToGoodsDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :goods_details, :invoice_id, :integer
  	add_column :goods_details, :goods_desc, :string
  	add_column :goods_details, :hsn_acs_code, :string
  	add_column :goods_details, :quantity, :float
  	add_column :goods_details, :rate, :float
  	add_column :goods_details, :taxable_value, :float
  	add_column :goods_details, :total_taxable_value, :float
  	add_column :goods_details, :cartage, :float
  	add_column :goods_details, :cgst, :float
  	add_column :goods_details, :sgst, :float
  	add_column :goods_details, :igst, :float
  	add_column :goods_details, :invoice_total, :float
  end
end