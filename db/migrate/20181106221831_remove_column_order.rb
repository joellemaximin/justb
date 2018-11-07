class RemoveColumnOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :product_id
    remove_column :orders, :quantity
    remove_column :orders, :unit_price
    remove_column :orders, :total_price
    remove_column :order_items, :first_name
    remove_column :order_items, :last_name
    remove_column :order_items, :email
    remove_column :order_items, :phone
  end
end