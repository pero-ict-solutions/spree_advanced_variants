#Spree Advanced Variants

[![wercker status](https://app.wercker.com/status/27692e20a7cf1bf50937d3e1654e89a7/m "wercker status")](https://app.wercker.com/project/bykey/27692e20a7cf1bf50937d3e1654e89a7)

[![Code Climate](https://codeclimate.com/github/pero-ict-solutions/spree_advanced_variants/badges/gpa.svg)](https://codeclimate.com/github/pero-ict-solutions/spree_advanced_variants)

[![Test Coverage](https://codeclimate.com/github/pero-ict-solutions/spree_advanced_variants/badges/coverage.svg)](https://codeclimate.com/github/pero-ict-solutions/spree_advanced_variants)


## Functionality

* generate all the variants based on the assigned option types


## Installation

Add spree_advanced_variants to your Gemfile:

```ruby
gem 'spree_advanced_variants'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_advanced_variants:install
```

## Testing


First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_advanced_variants/factories'
```

Copyright (c) 2015 PeRo ICT Solutions, released under the New BSD License
