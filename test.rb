puts RubyVM::InstructionSequence.new(DATA).disassemble

__END__

puts (1.plus(3))
puts (1.+(3))

# == disasm: #<ISeq:<compiled>@<compiled>>================================
# 0000 trace            1                                               (   2)
# 0002 putself
# 0003 putobject_OP_INT2FIX_O_1_C_
# 0004 putobject        3
# 0006 opt_send_without_block <callinfo!mid:plus, argc:1, ARGS_SIMPLE>, <callcache>
# 0009 opt_send_without_block <callinfo!mid:puts, argc:1, FCALL|ARGS_SIMPLE>, <callcache>
# 0012 pop
# 0013 trace            1                                               (   3)
# 0015 putself
# 0016 putobject_OP_INT2FIX_O_1_C_
# 0017 putobject        3
# 0019 opt_plus         <callinfo!mid:+, argc:1, ARGS_SIMPLE>, <callcache>
# 0022 opt_send_without_block <callinfo!mid:puts, argc:1, FCALL|ARGS_SIMPLE>, <callcache>
# 0025 leave

