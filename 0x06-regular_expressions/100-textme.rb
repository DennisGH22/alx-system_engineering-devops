#!/usr/bin/env ruby
input_string = ARGV[0]
regex = /\[from:(\+?\w+)\] \[to:(\+?\w+)\] \[flags:(-?\d:-?\d:-?\d:-?\d:-?\d)\]/
puts input_string.scan(regex).join(",")