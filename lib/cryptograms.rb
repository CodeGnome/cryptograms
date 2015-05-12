#!/usr/bin/env ruby

require 'bundler/setup'
require 'cryptograms/cryptogram'
require 'cryptograms/version'

if __FILE__ == $PROGRAM_NAME
  c = Cryptogram.new ARGV[0]
  puts c.cyphertext
end
