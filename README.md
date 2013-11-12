# Templight

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'templight'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install templight

## Usage

Add an initialiser to configure your template path in config/initializers/templight.rb

   Templight.configure(:path => ./path/to/templates)

Render templates using erb syntax by passing the template name and the hash of args to the render method

    Templight.render(filename, opts)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
