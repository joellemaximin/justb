class ProductPhoto < ApplicationRecord
    has_attached_file :picture, styles: { medium: "300x300>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

     belongs_to :product
end
