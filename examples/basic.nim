import times, posix, strutils, os
import ../libfswatch

var directory_to_watch = "./"
if paramCount() > 0:
  directory_to_watch = paramStr(1)

let handle = init_session(system_default_monitor_type)
discard handle.add_path(directory_to_watch)

proc cb(events: ptr cevent, event_num: cuint, data: pointer) {.cdecl.} =
  echo "events: ", event_num
  for ev in items(events, event_num):
    write stdout, "path: $# time: $#  ".format(ev.path, ev.evt_time)
    for flag in items(ev.flags, ev.flags_num):
      write stdout, flag
    echo()
  echo()
  sync()

discard handle.set_callback(cb, nil)

discard handle.start_monitor()
