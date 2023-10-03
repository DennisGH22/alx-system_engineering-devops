#!/usr/bin/env ruby
input_string = ARGV[0]
pattern = /hb?tn/
puts input_string.scan(pattern)