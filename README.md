# Custom Action to RailsAdmin with Dropzone.js Multiple File Upload

[![Gem Version](https://badge.fury.io/rb/rails_admin_dropzone.svg)](https://badge.fury.io/rb/rails_admin_dropzone)

Easy to use integration of drag&amp;drop files upload via dropzone.js for rails_admin

# Screenshot

#### Dropzone
![Imgur](http://i.imgur.com/PbfSMqy.png)

#### Upload images
![Imgur](http://i.imgur.com/GiVG0YX.png)

## How to use

Add in Gemfile

```ruby
gem 'rails_admin_dropzone'
```

## IMPORTANT:

 - Test with rails < 5 and TurboLink < 5

```ruby
class Album < ActiveRecord::Base
  has_many :photos
end

class Photo < ActiveRecord::Base
  belongs_to :album
end
```

Add this method `create_associated_image` in your model, example `Album`, that will contain the upload images and change the associations and attributes

```ruby
class Album < ActiveRecord::Base
  has_many :photos

  # Method
  def create_associated_image(image)
    photos.create(image: image)
  end
end
```

Add in `config/initialisers/rails_admin.rb`

```ruby
RailsAdmin.config do |config|
  config.actions do
    dashboard
    index
    new

    dropzone do
      only YOUR_MODEL # Example Album
    end

    show
    edit
    delete
  end
end
```
and "Voalá"  

## TODO

 - Adjustments to work with Turbolinks 5

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/luizpicolo/rails_admin_dropzone. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
