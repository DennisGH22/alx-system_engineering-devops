#!/usr/bin/env ruby
input_string = ARGV[0]
regex = /^\d{10,10}$/
puts input_string.scan(regex)