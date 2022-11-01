//https://wiki.teamfortress.com/wiki/Disguise#Notes

cl_autoreload 0 //disable autoreload to allow for acting

alias dice1 "play vo/spy_painsharp01.mp3"
alias dice2 "play vo/spy_painsharp02.mp3"
alias dice3 "play vo/spy_painsharp03.mp3"
alias dice4 "play vo/spy_painsharp04.mp3"
alias dice5 "dice1"
alias dice6 "dice4"

alias snipercallout1 "play vo/spy_snipercallout01.mp3"
alias snipercallout2 "play vo/taunts/spy_taunts06.mp3"

alias +sap "say_team Sapping!;+attack"
alias -sap "-attack"

alias +wepfiddle "lastdisguise;+inspect"
alias -wepfiddle "-inspect"

bind "1" "slot1; bind MOUSE1 +attack"
bind "2" "slot2; bind MOUSE1 +sap"
bind "3" "slot3; bind MOUSE1 +attack"
bind "4" "slot4; bind MOUSE1 +attack"
unbind 5;unbind 6;unbind 7;unbind 8;unbind 9;unbind 0
bind "r" "+reload"
bind "f" "+wepfiddle"

//exec spy-kp_disguise

bind "ENTER" +teamswitcher  //should be KP_ENTER but *NIX (LINUX/MACOS/BSD/ETC.) ports of source games don't pick up KP ENTER, instead reading it as ENTER.
                            //more info at https://github.com/ValveSoftware/csgo-osx-linux/issues/51
alias _reloadcfg "exec overrides/spy" // Reload

-teamswitcher
