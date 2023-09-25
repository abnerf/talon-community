mode: all
speech.engine: wav2letter
-
^go to sleep [<phrase>]$: speech.disable()
^(wake up)+$: 
    user.notify("Talon awake")
    speech.enable()
