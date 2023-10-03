#!/usr/bin/env ruby
input_string = ARGV[0]
regex = /\[from:(?<from>\+?\w+)\] \[to:(?<to>\+?\w+)\] \[flags:(?<flags>-?\d:-?\d:-?\d:-?\d:-?\d)\]/
puts input_string.scan(regex)