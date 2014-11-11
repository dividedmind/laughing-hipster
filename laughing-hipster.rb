#!/usr/bin/env ruby

require 'chronic'

times = ARGV.map &Chronic.method(:parse)
times.prepend Time.now if times.length < 2

puts rand(Range.new *times)
