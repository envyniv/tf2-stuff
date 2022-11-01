unbindall
-mod

#https://developer.valvesoftware.com/wiki/List_of_TF2_console_commands_and_variables
#https://developer.valvesoftware.com/wiki/Customizing_Options:_Keyboard
#https://developer.valvesoftware.com/wiki/Bind
#https://wiki.teamfortress.com/wiki/Scripting#List_of_key_names

//I hate that source engine keyboard detection is based on physical key position and not character typed.
//It's literally only convenient for those on a US layout
bind "0" "slot10"
bind "1" "slot1"
bind "2" "slot2"
bind "3" "slot3"
bind "4" "slot4"
bind "5" "slot5"
bind "6" "slot6"
bind "7" "slot7"
bind "8" "slot8"
bind "9" "slot9"
bind "MOUSE1" "+attack"
bind "MOUSE2" "+attack2"
bind "MOUSE4" "+attack3"
bind "CTRL" "viewmodel_toggle"

bind "h" "showmapinfo"
bind "g" "cl_trigger_first_notification"
bind "b" "cl_decline_first_notification"
bind "KP_MULTIPLY" "lastinv"
bind "`" "changeclass"              #+LALT = changeteam - for example, i wanted to bind this to <, since i use an IT-IT layout; but of course i cannot.
bind "TAB" "+showscores_info"       #+LALT= callvote
bind "ESCAPE" "cancelselect"        #+LALT disconnect
bind "END" "open_charinfo_direct"

bind "F1" "show_quest_log"
bind "F2" "screenshot"
bind "F3" "abuse_report_queue"
bind "F4" "toggleconsole"

bind "MOUSE5" "ds_man"            #binding to F9 doesn't seem to work?
bind "k" "killswitcher"
bind "PAUSE" "pause"              # Toggle the server pause state. - from (https://developer.valvesoftware.com/wiki/Console_Command_List)
bind "ALT" "+mod"              # LEFT ALT AS MODIFIER

bind "SPACE" "+jump"
bind "SHIFT" "+duck"

bind "W" "+mf"
bind "A" "+ml"
bind "S" "+mb"
bind "D" "+mr"
