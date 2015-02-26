# Average

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'average'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install average

## Usage

Get Median

    $ mean([3, 4, 5, 2, 3, 1])
    $ 3.0

Get Mode

    $ mode([2,4,6,14,21,24,229,24,24,39])
    $ [24]

It gives back an array due that could be possible to have more than one mode in a array

    $ mode([1, 2, 2, 2, 3, 3, 7, 7, 7, 9])
    $ [2, 7]
Get Median

    $ median([3,4,5])
    $ 4
    
All methods described aboved can handle an array of integers, floats, strings or a mixed array with all of them

    $ mean([3, "4", 5, 2.0, 3, "1.0"])
    $ 3.0

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
