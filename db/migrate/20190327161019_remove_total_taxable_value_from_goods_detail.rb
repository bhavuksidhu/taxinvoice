class RemoveTotalTaxableValueFromGoodsDetail < ActiveRecord::Migration[5.1]
  def change
    remove_column :goods_details, :total_taxable_value, :float
  end
end
