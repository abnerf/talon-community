window (new | open): app.window_open()
window next: app.window_next()
window last: app.window_previous()
window close: app.window_close()
window hide: app.window_hide()
jump back: key("cmd-tab")
focus | jump <user.running_applications>: user.switcher_focus(running_applications)
# following only works on windows. Can't figure out how to make it work for mac. No idea what the equivalent for linux would be.
focus$: user.switcher_menu()
focus last: user.switcher_focus_last()
running list: user.switcher_toggle_running()
running close: user.switcher_hide_running()
launch <user.launch_applications>: user.switcher_launch(launch_applications)

snap <user.window_snap_position>: user.snap_window(window_snap_position)
snap next [screen]: user.move_window_next_screen()
snap last [screen]: user.move_window_previous_screen()
snap screen <number>: user.move_window_to_screen(number)
snap <user.running_applications> <user.window_snap_position>:
    user.snap_app(running_applications, window_snap_position)
snap <user.running_applications> [screen] <number>:
    user.move_app_to_screen(running_applications, number)

# Most used apps shortcuts
coder [<phrase>]$: 
    user.switcher_focus('code')
    sleep(300ms)
    user.parse_phrase(phrase or "")
slacker [<phrase>]$: 
    user.switcher_focus('slack')
    sleep(200ms)
    user.parse_phrase(phrase or "")
portal [<phrase>]$: 
    user.switcher_focus('chrome')
    sleep(200ms)
    user.parse_phrase(phrase or "")
kitty | hacker [<phrase>]$: 
    user.switcher_focus('kitty')
    sleep(200ms)
    user.parse_phrase(phrase or "")
zapzap | zap [<phrase>]$: 
    user.switcher_focus('whats')
    sleep(200ms)
    user.parse_phrase(phrase or "")
signal [<phrase>]$: 
    user.switcher_focus('signal')
    sleep(200ms)
    user.parse_phrase(phrase or "")
spotify:
    user.switcher_focus('spotify')
