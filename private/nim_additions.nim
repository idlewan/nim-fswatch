
proc `[]`*(events: ptr cevent, i: int): cevent =
  let address = cast[ByteAddress](events) + i*sizeof(events[])
  result = cast[ptr cevent](address)[]

proc `[]`*(flags: ptr event_flag, i: int): event_flag =
  let address = cast[ByteAddress](flags) + i*sizeof(flags[])
  result = cast[ptr event_flag](address)[]

iterator items*(events: ptr cevent, event_num: cuint): cevent {.inline} =
  for i_event in 0 ..< event_num.int:
    yield events[i_event]

iterator items*(flags: ptr event_flag, flag_num: cuint): event_flag {.inline.} =
  for i_flag in 0 ..< flag_num.int:
    yield flags[i_flag]


