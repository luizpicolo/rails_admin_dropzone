class Album < ActiveRecord::Base
  has_many :photos

  def create_associated_image(image)
    photos.create(image: image)
  end
end
