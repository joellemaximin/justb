class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
    	t.string :first_name
      t.string :last_name
    	t.string :email
    	t.string :phone
    	t.integer :product_id
    	t.text :notes

      t.timestamps
    end
  end
end
