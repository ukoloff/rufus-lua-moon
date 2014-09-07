# Rufus::Lua::Moon

Provides MoonScript for Rufus::Lua interpreter

## Installation

Add this line to your application's Gemfile:

    gem 'rufus-lua-moon'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rufus-lua-moon

## Usage

After creating Rufus::Lua interpreter patch it to support MoonScript:

```ruby
s=Rufus::Lua::State.new
s.moon!
s.eval <<EOL
  m=require "moonscript.base"
  x=m.to_lua "->1"
  print(x)
EOL
```
You can set `package.moonpath` and require file(s) with moonscript code:
```ruby
s=Rufus::Lua::State.new.moon!
s.eval <<EOL
  package.moonpath='./?.moon'
  require 'myfile'  -- load 'myfile.moon'
EOL
```

## Credits

  * [Lua](http://www.lua.org/)
  * [MoonScript](http://moonscript.org/)
  * [Rufus::Lua](https://github.com/jmettraux/rufus-lua)

## See also

  * [Rufus::Lua::Win](https://github.com/ukoloff/rufus-lua-win) if you run Rufus::Lua on Windows
