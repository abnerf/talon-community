not mode: sleep
-
^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    user.gdb_disable()
^(command | common | comma) mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
^switch to (command | common | comma) mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
^mixed mode$:
  mode.disable("sleep")
  mode.enable("dictation")
  mode.enable("command")
