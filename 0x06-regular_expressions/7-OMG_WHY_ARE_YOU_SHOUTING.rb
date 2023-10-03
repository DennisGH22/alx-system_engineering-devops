#!/usr/bin/env ruby
input_string = ARGV[0]
regex = /[A-Z]/
puts input_string.scan(regex)