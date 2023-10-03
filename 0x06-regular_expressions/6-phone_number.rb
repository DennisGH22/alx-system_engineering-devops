#!/usr/bin/env ruby
input_string = ARGV[0]
pattern = /^\d{10,10}$/
puts input_string.scan(pattern)