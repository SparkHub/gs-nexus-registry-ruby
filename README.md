[![Gem Version](https://badge.fury.io/rb/gs-nexus-registry-ruby.svg)](http://badge.fury.io/rb/gs-nexus-registry-ruby)
[![Maintainability](https://api.codeclimate.com/v1/badges/76545bad12dd3d14ec1d/maintainability)](https://codeclimate.com/repos/5a39a3440a289c027a00038e/maintainability)

# GsNexusRegistry

Allow the command `rake release` to push a gem in a Nexus Repository Manager instead of RubyGems.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gs-nexus-registry-ruby', '~> 0.1'
```

Then in the Rakefile:

```ruby
gs_nexus_dir = Gem::Specification.find_by_name('gs-nexus-registry-ruby').gem_dir
require "#{gs_nexus_dir}/lib/vendor/rubygem_push"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gs-nexus-registry-ruby

## Usage

To push a gem to a Nexus registry, just use the default command: `rake release`

_Note: a prompt asking you for credential might be displayed the first time._

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mchaisse/gs_nexus_registry. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GsNexusRegistry project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mchaisse/gs_nexus_registry/blob/master/CODE_OF_CONDUCT.md).
