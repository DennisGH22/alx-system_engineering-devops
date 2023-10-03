#!/usr/bin/env ruby
input_string = ARGV[0]
regex = /^h.n$/
puts input_string.scan(regex)