# jekyll-hardlinks

Jekyll copies static files and duplicates storage use. Hard links point
to the same file instead of making copies, thus saving storage.

**This plugin only works on file systems that support hard links.**  It
will fallback to copying files if you're generating the site in another
filesystem, since cross-filesystem hard links aren't possible.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-hardlinks'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-hardlinks

## Usage

Add early on your `_config.yml`:

```yaml
plugins:
- jekyll-hardlinks
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake test` to run the tests. You can also run `bin/console`
for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake
install`. To release a new version, update the version number in
`version.rb`, and then run `bundle exec rake release`, which will create
a git tag for the version, push git commits and tags, and push the
`.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on 0xacab.org at
<https://0xacab.org/sutty/jekyll/jekyll-hardlinks>. This project is
intended to be a safe, welcoming space for collaboration, and
contributors are expected to adhere to the [Sutty code of
conduct](https://sutty.nl/en/code-of-conduct/).

## License

The gem is available as free software under the terms of the GPL3
License.

## Code of Conduct

Everyone interacting in the jekyll-hardlinks project’s codebases, issue
trackers, chat rooms and mailing lists is expected to follow the [code
of conduct](https://sutty.nl/en/code-of-conduct/).
