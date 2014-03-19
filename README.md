# Arp

Retrieve the content of the ARP cache

## Installation

Add this line to your application's Gemfile:

    gem 'arp'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arp

## Usage

```ruby
  cache = Arp::Cache.new
  cache.each do |entry|
    puts entry.ip             # => "192.168.124.2"
    puts entry.hw_type        # => "0x1"
    puts entry.flags          # => "0x2" 
    puts entry.hw_address     # => "00:50:56:e9:27:c7" 
    puts entry.mask           # => "*"
    puts entry.device         # => "eth0" 
  end
```

## Limitation

Currently works only on Linux. Tested on Ubuntu 12.04.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/arp/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
