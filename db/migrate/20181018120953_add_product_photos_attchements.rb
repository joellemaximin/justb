class AddProductPhotosAttchements < ActiveRecord::Migration[5.2]
	  def up
	    add_attachment :product_photos, :picture
	  end

	  def down
	    remove_attachment :product_photos, :picture
	  end
end
