#!/usr/bin/env ruby
input_string = ARGV[0]
regex = /hbt{2,5}n/
puts input_string.scan(regex)