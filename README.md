# thincloud-test-rails [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/newleaders/thincloud-test-rails)

## Description

Opinionated testing framework dependencies and configuration for Rails applications, built on [`thincloud-test`](http://newleaders.github.com/thincloud-test).

[New Leaders](https://newleaders.com) uses this gem to manage the following dependencies:

* [database_cleaner](https://github.com/bmabey/database_cleaner)
* [factory_girl_rails](https://github.com/thoughtbot/factory_girl_rails)
* [minitest-rails](https://github.com/blowmage/minitest-rails)
* [minitest-rails-shoulda](https://github.com/bousquet/minitest-rails-shoulda)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)


## Requirements

### Ruby

This gem has been tested against the following Ruby versions:

* 2.0.0

TODO: also support 1.9.3

### Rails

This gem requires Rails 4.0.0 and has been tested on the following versions:

* 4.0.0

TODO: also support 3.2+


## Installation

Add this line to your application's Gemfile:

``` ruby
gem "thincloud-test-rails"
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install thincloud-test-rails
```


## Usage

The gem manages the test framework dependencies for you and provides a generator (`thincloud:test`) to bootstrap a test environment for your Rails application.

To configure your application in one easy step, run the following:

```
$ rails g thincloud:test
```

This generator will do the following:

* Remove any existing `Test::Unit`-generated content
* Run the `mini_test:install` generator for `minitest-rails`
* Add `test/support/*` files which match New Leaders conventions
* Inject a line into `config/application.rb` to require the `thincloud/test/rails/railtie` file

Once this is complete, you will have a complete test setup. Run `rake` and enjoy! :tada: :balloon:


## Contributing

1. [Fork it](https://github.com/newleaders/thincloud-test-rails/fork_select)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. [Create a Pull Request](https://github.com/newleaders/thincloud-test-rails/pull/new)


## License

* Freely distributable and licensed under the [MIT license](http://newleaders.mit-license.org/2013/license.html).
* Copyright (c) 2013 New Leaders ([opensource@newleaders.com](opensource@newleaders.com))
* [https://newleaders.com](https://newleaders.com)
