# Rufus::Lua::Moon

[![Build Status](https://travis-ci.org/ukoloff/rufus-lua-moon.svg?branch=master)](https://travis-ci.org/ukoloff/rufus-lua-moon)
[![Build status](https://ci.appveyor.com/api/projects/status/9huwrdo2tm22kda6?svg=true)](https://ci.appveyor.com/project/ukoloff/rufus-lua-moon)
[![Gem Version](https://badge.fury.io/rb/rufus-lua-moon.svg)](http://badge.fury.io/rb/rufus-lua-moon)

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

## Dependencies

On Linux you should have Lua and Lpeg installed
(eg. for [Ubuntu](.travis.yml)). 

On Windows simply use
[Rufus::Lua::Win](https://github.com/ukoloff/rufus-lua-win).

## Credits

  * [Lua](http://www.lua.org/)
  * [MoonScript](http://moonscript.org/)
  * [Rufus::Lua](https://github.com/jmettraux/rufus-lua)
  * [Travis CI](https://travis-ci.org/)
  * [AppVeyor](http://www.appveyor.com/)
