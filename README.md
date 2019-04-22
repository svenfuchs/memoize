# Memoize [![Build Status](https://travis-ci.org/svenfuchs/memoize.svg?branch=master)](https://travis-ci.org/svenfuchs/memoize)

Simplistic memoization using instance variables.

## Installation

```
gem install
```

## Usage

```ruby
require 'memoize'

class Obj
  include Memoize

  # on a separate line, after the method definition
  def foo
    # expensive operation
  end
  memoize :foo

  # on one line, before the method definition
  memoize def bar
    # expensive operation
  end
end
```
