#!/usr/bin/env ruby
input_string = ARGV[0]
regex = /School/
puts input_string.scan(regex)