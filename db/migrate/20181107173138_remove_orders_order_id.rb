class RemoveOrdersOrderId < ActiveRecord::Migration[5.2]
  def up
    remove_column :orders, :order_id
  end

  def down
    add_column :orders, :order_id, :integer
  end
end
