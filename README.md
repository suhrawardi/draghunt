# Draghunt

See also https://github.com/adamtornhill/code-maat

This gem is inspired by the book "Your code as a Crime Scene"
(https://pragprog.com/book/atcrime/your-code-as-a-crime-scene) by
Adam Tornhill.

It is a work in progress, and so far only prints some stats;
[filename, commits, loc]

```
$ bin/draghunt
["lib/draghunt.rb", 2, 2]
["lib/draghunt/version.rb", 2, 3]
["lib/draghunt/stats.rb", 1, 26]
["bin/draghunt", 1, 4]
["Rakefile", 1, 1]
```

## Installation

This Gem depends on cloc, http://cloc.sourceforge.net/

Add this line to your application's Gemfile:

    gem 'draghunt'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install draghunt

## Contributing

1. Fork it ( https://github.com/[my-github-username]/draghunt/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
