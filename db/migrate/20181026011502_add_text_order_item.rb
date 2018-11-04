class AddTextOrderItem < ActiveRecord::Migration[5.2]
  def change
  	add_column :order_items, :first_name, :string
    add_column :order_items, :last_name, :string
    add_column :order_items, :email, :string
    add_column :order_items, :phone, :string
  end
end
