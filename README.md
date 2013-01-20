# IcedRails

Add support for `.iced` files in the Rails Asset Pipeline

## Installation

Add this line to your application's Gemfile:

    gem 'iced-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iced-rails

## Usage

Place a new `.iced` file under `app/assets/javascripts`. E.g. `application.iced`.

Make sure to name to file `application.iced` and not `application.js.iced`.

See [IcedCoffeeScript][1] for an explanation about iced coffeescript.

## TODO

Iced Deferrals are currently generated inline. If you have multiple .iced files, the deferrals will be generated multiple times, increasing the size of your JS a little.
Ideally, the first evaluation should generate  Iced Deferrals for the `:window` runtime, and `:none` for all following calls.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


[1]:http://maxtaco.github.com/coffee-script/