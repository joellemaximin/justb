class Product < ApplicationRecord
	belongs_to :category
	
    CURRENCY = 'EUR'

	validates_presence_of :category
	validates_presence_of :title
	validates_presence_of :price	

	has_many :photos, class_name: 'ProductPhoto'

end
