# ModelColumn

[![Gem Version](https://badge.fury.io/rb/model_column.svg)](http://badge.fury.io/rb/model_column)

[![Code Climate](https://codeclimate.com/github/FinalCAD/model_column.png)](https://codeclimate.com/github/FinalCAD/model_column)

[![Dependency Status](https://gemnasium.com/FinalCAD/model_column.png)](https://gemnasium.com/FinalCAD/model_column)

[![Build Status](https://travis-ci.org/FinalCAD/model_column.png?branch=master)](https://travis-ci.org/FinalCAD/model_column) (Travis CI)

[![Coverage Status](https://coveralls.io/repos/github/FinalCAD/model_column/badge.svg?branch=master)](https://coveralls.io/github/FinalCAD/model_column?branch=master)

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/model_column`. To experiment with that code, run `bin/console` for an interactive prompt.

Let you define columns in a simple class to permit to use ActiveModel::Validations for instance

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'model_column'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install model_column

## Usage

You can use model_column as

```ruby
require 'model_column'

module Sample
  module Services
    class Activity
      include ActiveModel::Validations
      include ModelColumn::Base::Attributes

      column :foo

      validates :foo, presence: true
    end
  end
end
```

and enjoy validations

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joel/model_column. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
