[![Build Status](https://semaphoreci.com/api/v1/projects/fd96a25e-c843-44ff-8c43-1da486ca03a6/425376/badge.svg)](https://semaphoreci.com/fegoa89/average)      

# Average

Simple gem to calculate mean, median and mode from an array.

## Installation

Add this line to your application's Gemfile:

    gem 'average'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install average

## Usage

Get Median

    $ [3, 4, 5, 2, 3, 1].mean
    $ 3.0

Get Mode

    $ [2,4,6,14,21,24,229,24,24,39].mode
    $ 24

It gives back an array due that could be possible to have more than one mode in a array

    $ [1, 2, 2, 2, 3, 3, 7, 7, 7, 9].mode
    $ [2, 7]

But if you want to have only a unique mode, you can use 'unique_mode' method (Only for Ruby versions bigger than 1.8.7 -> http://apidock.com/ruby/v1_8_7_72/Enumerable/max_by).

    $ [1, 2, 2, 2, 3, 3, 7, 7, 7, 9].unique_mode
    $ 2

Get Median

    $ [3,4,5].median
    $ 4
    
All methods described aboved can handle an array of integers, floats, strings or a mixed array with all of them
    
    $ [3, "4", 5, 2.0, 3, "1.0"].mean
    $ 3.0

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/fegoa89/average/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

