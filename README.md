# A Dynamic Reverse Proxy for Rack

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack-dynamic-reverse-proxy'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install rack-dynamic-reverse-proxy
```

## Usage

```ruby
require "rack-dynamic-reverse-proxy"

use Rack::DynamicReverseProxy do
  reverse_proxy_options preserve_host: true

  reverse_proxy_rule do |env|
    if /test/.match env.fullpath
      'http://example.com/'
    end
  end
end

app = proc do |env|
  [
    200,
    { 'Content-Type' => 'text/html' },
    ['<html><body>test</body></html>']
  ]
end
run app
```

## Contributing

1. Fork it ( https://github.com/k-shogo/rack-dynamic-reverse-proxy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
