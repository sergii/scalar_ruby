# Scalar API Reference for Ruby

This gem simplifies the integration of [Scalar](https://scalar.com), a modern open-source developer experience platform for your APIs into Ruby applications.

## Installation

Add the gem to your application's Gemfile by executing:

```
bundle add scalar_ruby
```

## Getting Started

Here are links to guidelines on how to set up the library for your Ruby application.

- [Setup for Ruby on Rails](https://github.com/dmytroshevchuk/scalar_ruby/wiki/Setup-for-Ruby-on-Rails)

Please feel free to [create a pull request](https://github.com/dmytroshevchuk/scalar_ruby/fork) and add a guideline for the framework that is not currently covered.

## Configuration

Once mounted to your application, the library requires no further configuration. You can immediately start playing with the provided API reference example.

Having default configurations set may be an excellent way to validate whether the Scalar fits your project. However, most users would love to utilize their specifications and be able to alter settings.

The default configuration can be changed using the `Scalar.setup` method.

```
Scalar.setup do |config|
 config.page_title = 'Hello, World!'
end
```

Below, you’ll find a complete list of configuration settings:

- ### library_url

**Default:** `https://cdn.jsdelivr.net/npm/@scalar/api-reference`

By default, the library uses the latest version of Scalar, so users get the latest updates and bug fixes. This setting allows you to set a specific version of Scalar.

- ### page_title

**Default:** `API Reference`

It defines the page title displayed in the browser tab.

- ### scalar_configuration

**Default:** `{}`

Scalar has a rich set of configuration options if you want to change how it works and looks.

```
Scalar.setup do |config|
 config.scalar_configuration = { theme: 'purple' }
end
```

A complete list of configuration options can be found [here](https://github.com/scalar/scalar/blob/main/documentation/configuration.md)

- ### specification

**Default:** `https://cdn.jsdelivr.net/npm/@scalar/galaxy/dist/latest.yaml`

It allows users to pass their own OpenAPI specification to Scalar. It can be a URL to specification or a string object in JSON or YAML format.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

Run ' bundle exec rake install ' to install this gem onto your local machine. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/scalar-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/scalar-ruby/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Scalar::Ruby project’s codebases, issue trackers, chat rooms, and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/scalar-ruby/blob/master/CODE_OF_CONDUCT.md).
