#!/usr/bin/env ruby
# Generated by the protocol buffer compiler. DO NOT EDIT!

require 'protocol_buffers'

module Packed
  # forward declarations
  class Test < ::ProtocolBuffers::Message; end

  class Test < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module N
      extend ::ProtocolBuffers::Enum
      A = 1
      B = 2
      C = 3
    end

    repeated :int32, :a, 4, :packed => true 
    repeated :int64, :b, 5, :packed => true 
    repeated :uint32, :c, 6, :packed => true 
    repeated :uint64, :d, 7, :packed => true 
    repeated :sint32, :e, 8, :packed => true 
    repeated :sint64, :f, 9, :packed => true 
    repeated :fixed64, :g, 10, :packed => true 
    repeated :sfixed64, :h, 11, :packed => true 
    repeated :double, :i, 12, :packed => true 
    repeated :fixed32, :j, 13, :packed => true 
    repeated :sfixed32, :k, 14, :packed => true 
    repeated :float, :l, 15, :packed => true 
    repeated :bool, :m, 16, :packed => true 
    repeated ::Packed::Test::N, :n, 17, :packed => true 
  end

end
