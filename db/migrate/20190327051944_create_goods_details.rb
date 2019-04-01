class CreateGoodsDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :goods_details do |t|

      t.timestamps
    end
  end
end
