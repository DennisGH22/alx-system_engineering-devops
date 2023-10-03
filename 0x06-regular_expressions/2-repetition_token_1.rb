#!/usr/bin/env ruby
input_string = ARGV[0]
regex = /hb?tn/
puts input_string.scan(regex)