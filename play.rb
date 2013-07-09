#!/usr/bin/env ruby

$LOAD_PATH << 'lib'

require "fizz_buzz"

childrens = FizzBuzz.new

1.upto(100) { |n| print "#{childrens.count(n)} " }