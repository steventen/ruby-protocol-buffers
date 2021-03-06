#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.16
# from Racc grammar file "".
#

require 'racc/parser.rb'

require 'protocol_buffers/runtime/text_scanner'

module ProtocolBuffers
  class TextParser < Racc::Parser

module_eval(<<'...end text_parser.ry/module_eval...', 'text_parser.ry', 96)
def initialize
  @msgstack = []
end

attr_accessor :yydebug

def parse_text(text, message)
  scanner = ProtocolBuffers::TextScanner.new(text)
  parse_from_scanner(scanner.enum_for(:scan), message)
end

def parse_from_scanner(scanner, message)
  @msgstack.clear
  push_message(message)
  yyparse(scanner, :each)
  pop_message
end

private :yyparse, :do_parse
private
def current_message
  @msgstack.last
end

def push_message(message)
  @msgstack.push(message)
end

def pop_message
  @msgstack.pop
end

def set_field(field, value)
  msg = current_message
  if field.repeated?
    msg.value_for_tag(field.tag) << value
  else
    msg.set_value_for_tag(field.tag, value)
  end
  msg
end
...end text_parser.ry/module_eval...
##### State transition tables begin ###

racc_action_table = [
     2,     6,     6,    10,    28,    11,     6,    23,    24,     8,
    30,     7,     7,    29,     9,    13,     7,    15,    20,    17,
    19,    18,    25 ]

racc_action_check = [
     1,    27,     1,     5,    24,     5,    26,    12,    12,     2,
    27,    27,     1,    26,     4,     7,    26,     9,     9,     9,
     9,     9,    16 ]

racc_action_pointer = [
   nil,     0,     9,   nil,     7,    -5,   nil,    13,   nil,    15,
   nil,   nil,    -6,   nil,   nil,   nil,    19,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,     2,   nil,     4,    -1,   nil,   nil,
   nil ]

racc_action_default = [
    -1,   -21,   -21,    -2,    -9,   -21,   -11,   -21,    31,   -10,
    -5,    -7,   -21,   -13,    -3,    -4,   -15,   -16,   -17,   -18,
   -19,    -1,    -1,   -12,   -21,   -20,   -21,   -21,   -14,    -6,
    -8 ]

racc_goto_table = [
     1,    14,    21,    22,    12,    16,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    26,    27 ]

racc_goto_check = [
     1,     4,     6,     7,     8,     9,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,     1,     1 ]

racc_goto_pointer = [
   nil,     0,   nil,   nil,    -8,   nil,    -8,    -8,    -3,    -4 ]

racc_goto_default = [
   nil,   nil,     3,     4,   nil,     5,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 16, :_reduce_1,
  2, 16, :_reduce_none,
  3, 17, :_reduce_3,
  3, 17, :_reduce_4,
  0, 21, :_reduce_5,
  5, 17, :_reduce_6,
  0, 22, :_reduce_7,
  5, 17, :_reduce_8,
  1, 20, :_reduce_none,
  2, 20, :_reduce_none,
  1, 18, :_reduce_11,
  3, 18, :_reduce_12,
  1, 23, :_reduce_13,
  3, 23, :_reduce_14,
  1, 19, :_reduce_none,
  1, 19, :_reduce_none,
  1, 19, :_reduce_none,
  1, 19, :_reduce_none,
  1, 24, :_reduce_none,
  2, 24, :_reduce_20 ]

racc_reduce_n = 21

racc_shift_n = 31

racc_token_table = {
  false => 0,
  :error => 1,
  :identifier => 2,
  :string => 3,
  :integer => 4,
  :bool => 5,
  :float => 6,
  ":" => 7,
  "<" => 8,
  ">" => 9,
  "{" => 10,
  "}" => 11,
  "[" => 12,
  "]" => 13,
  "." => 14 }

racc_nt_base = 15

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "identifier",
  "string",
  "integer",
  "bool",
  "float",
  "\":\"",
  "\"<\"",
  "\">\"",
  "\"{\"",
  "\"}\"",
  "\"[\"",
  "\"]\"",
  "\".\"",
  "$start",
  "message",
  "field",
  "field_name",
  "primitive_value",
  "message_field_head",
  "@1",
  "@2",
  "qualified_name",
  "concat_string" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'text_parser.ry', 6)
  def _reduce_1(val, _values, result)
                     result = current_message

    result
  end
.,.,

# reduce 2 omitted

module_eval(<<'.,.,', 'text_parser.ry', 12)
  def _reduce_3(val, _values, result)
                     set_field(val[0], val[2])

    result
  end
.,.,

module_eval(<<'.,.,', 'text_parser.ry', 16)
  def _reduce_4(val, _values, result)
                     field, enum_symbol = val[0], val[2]
                 unless field.kind_of?(ProtocolBuffers::Field::EnumField)
                   raise Racc::ParseError, "not a enum field: %s" % field.name
                 end
                 value = field.value_from_name(enum_symbol)
                 unless value
                   raise Racc::ParseError, "enum type %s has no value named %s" % [field.name, enum_symbol]
                 end
                 set_field(field, value)

    result
  end
.,.,

module_eval(<<'.,.,', 'text_parser.ry', 28)
  def _reduce_5(val, _values, result)
                     field = _values[-2]
                 push_message(field.proxy_class.new)

    result
  end
.,.,

module_eval(<<'.,.,', 'text_parser.ry', 33)
  def _reduce_6(val, _values, result)
                     pop_message
                 set_field(val[0], val[3])

    result
  end
.,.,

module_eval(<<'.,.,', 'text_parser.ry', 38)
  def _reduce_7(val, _values, result)
                     field = _values[-2]
                 push_message(field.proxy_class.new)

    result
  end
.,.,

module_eval(<<'.,.,', 'text_parser.ry', 43)
  def _reduce_8(val, _values, result)
                     pop_message
                 set_field(val[0], val[3])

    result
  end
.,.,

# reduce 9 omitted

# reduce 10 omitted

module_eval(<<'.,.,', 'text_parser.ry', 52)
  def _reduce_11(val, _values, result)
                     field = current_message.class.field_for_name(val[0])
                 if field
                   return field
                 end

                 # fallback for case mismatch in group fields.
                 field = current_message.fields.find { |tag,field| field.name.to_s.downcase == val[0].downcase }
                 field &&= field.last
                 if field && field.kind_of?(ProtocolBuffers::Field::GroupField)
                   return field
                 end

                 raise Racc::ParseError, "no such field %s in %s" % [val[0], current_message.class]

    result
  end
.,.,

module_eval(<<'.,.,', 'text_parser.ry', 68)
  def _reduce_12(val, _values, result)
                     raise NotImplementedError, "extension is not yet supported"

    result
  end
.,.,

module_eval(<<'.,.,', 'text_parser.ry', 73)
  def _reduce_13(val, _values, result)
                           result = [val[0]]

    result
  end
.,.,

module_eval(<<'.,.,', 'text_parser.ry', 77)
  def _reduce_14(val, _values, result)
                           result = (val[0] << val[2])

    result
  end
.,.,

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

# reduce 19 omitted

module_eval(<<'.,.,', 'text_parser.ry', 87)
  def _reduce_20(val, _values, result)
                          result = val[0] + val[1]

    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class TextParser
end   # module ProtocolBuffers
