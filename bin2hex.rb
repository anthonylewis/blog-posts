#!/usr/bin/env ruby
#
# A few methods for converting binary strings to their hex representation
# and converting hex strings back to binary.
#
# These could be added to String.
#
# Author:: Anthony Lewis
# Copyright:: Copyright (c) 2011 Anthony Lewis
# License:: Distributed under the same terms as Ruby
#
require 'pp'
require 'digest/sha1'

# convert String s from raw binary to printable hex
def bin_to_hex(s)
#  s.each_byte.map { |b| b.to_s(16) }.join
  s.unpack('H*').first
end

# convert String s from printable hex to raw binary
def hex_to_bin(s)
#  len = s.length / 2
#  s.unpack('a2'*len).map { |x| x.hex }.pack('c'*len)
    
#  s.scan(/../).map { |x| x.hex.chr }.join
  s.scan(/../).map { |x| x.hex }.pack('c*')
end

# demonstrating usage with a few digests
b = Digest::SHA1.digest('Hello, World!')
s = Digest::SHA1.hexdigest('Hello, World!')

pp b
pp hex_to_bin(s)
pp s
pp bin_to_hex(b)

