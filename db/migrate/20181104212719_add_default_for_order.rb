class AddDefaultForOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :product_id, :integer
    add_column :orders, :quantity, :integer
    add_column :orders, :unit_price, :float
    add_column :orders, :total_price, :float
    add_column :orders, :order_id, :integer
  end
end
