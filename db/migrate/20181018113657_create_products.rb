class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :title
    	t.text :description
    	t.text :composition

    	t.integer :category_id
    	t.decimal :price, default: 0
      t.timestamps
    end
  end
end
