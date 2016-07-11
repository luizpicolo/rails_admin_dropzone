class Product < ActiveRecord::Base
  has_many :product_images

  def create_associated_image(image)
    product_images.create(image: image)
  end
end
