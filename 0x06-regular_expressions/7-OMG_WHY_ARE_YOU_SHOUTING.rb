#!/usr/bin/env ruby
input_string = ARGV[0]
pattern = /[A-Z]/
puts input_string.scan(pattern)