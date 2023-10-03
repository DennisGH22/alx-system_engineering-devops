#!/usr/bin/env ruby
input_string = ARGV[0]
pattern = /hbt*n/
puts input_string.scan(pattern)