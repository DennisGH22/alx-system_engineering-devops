#!/usr/bin/env ruby
input_string = ARGV[0]
pattern = /hbt{2,5}n/
puts input_string.scan(pattern).join