# Custom Action to RailsAdmin with Dropzone.js Multiple File Upload

Easy to use integration of drag&amp;drop files upload via dropzone.js for rails_admin

# Screenshot

#### Dropzone
![Imgur](http://i.imgur.com/PbfSMqy.png)

#### Upload images
![Imgur](http://i.imgur.com/GiVG0YX.png)

## How to use

Clone repository in your project    

    git clone git@github.com:luizpicolo/rails_admin_dropzone.git

Add in Gemfile (Path is important)

```ruby
gem 'rails_admin_dropzone', path: 'rails_admin_dropzone'
```

Enter the folder `rails_admin_dropzone/lib/rails_admin_dropzone.rb` and modify this line with yours attributes

**photos = Association**        
**Image = Attribute**

```ruby
@object.photos.create(image: image)
```

Add in `config/initialisers/rails_admin.rb`

```ruby
RailsAdmin.config do |config|
  config.actions do
    dashboard
    index
    new

    dropzone do
      only YOUR_MODEL
    end

    show
    edit
    delete
  end
end
```
and "Voalá"    

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/luizpicolo/rails_admin_dropzone. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
