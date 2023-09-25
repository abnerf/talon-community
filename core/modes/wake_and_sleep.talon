#defines the commands that sleep/wake Talon
mode: all
-
^(welcome back)+$:
    user.mouse_wake()
    user.history_enable()
    user.talon_mode()
    user.notify("Talon awake")
^sleep all [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()
    user.notify("Talon sleeping")

^talon sleep | snore | drowse [<phrase>]$: 
    speech.disable()
    user.notify("Talon sleeping")

^(talon wake)+$: 
    speech.enable()
    user.notify("Talon awake")
