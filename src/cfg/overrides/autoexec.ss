# Commands here will run at game launch, after mastercomfig

#////////////////////// SHARED ////////////////////////

alias "deniedsnd" "play replay/cameracontrolerror.wav"
alias "clksnd" "play ui/buttonclickrelease.mp3"

alias "+_class_specific_mod" {} // will be set in class cfgs
alias "-_class_specific_mod" {} // will be set in class cfgs

alias "spycallout" "voicemenu 1 1"
alias "niceshot" "voicemenu 2 6"
alias "sentryahead" "voicemenu 1 2"
alias "moveup" "voicemenu 0 3"

alias "_reload_cfg_cc" "cc_emit #Class.Loaded"
alias "reloadcfg" {
  _reloadcfg
  _reload_cfg_cc
}

//////////////////////// UI SETTINGS ////////////////////////

cl_software_cursor 1 //I use a controller, this is needed for me

//closed captions
closecaption 1
cc_subtitles 1
cc_lang clovervidiac
cc_predisplay_time 0
tf_scoreboard_mouse_mode 2 //csgo-like scoreboard; click to activate mouse mode

alias "cl_showpos_in_score" "bind tab +showscores_info"
alias "+showscores_info" {
  +showscores
  cl_showfps 1
  cl_showpos 1
}

alias "-showscores_info" {
  -showscores
  cl_showfps 0
  cl_showpos 0
}

crosshair 0 #crosshair provided by hud
cl_crosshair_file "" #removes set crosshair file
exec res/ds_man.cfg

enum killswitcher { #switches between killing and exploding
    {
    kill
    },{
    explode
    }
}

alias enumitemset "incrementvar load_itempreset 0 3 1"

#deprecated volume manager as it requires constant restarting of the tf2 sound system.

//////////////////////// LEFT-ALT AS MODIFIER ////////////////////////

//2,6 is niceshot; 1,1 is spy; 0,3 is moveup and 1,2 is sentryahead
alias "+mod" {
  bind ` changeteam
  bind ESCAPE disconnect
  bind c niceshot
  bind x sentryahead
  bind z moveup
  bind t say
  bind e spycallout
  bind v enumitemset
  bind q dropitem
  bind f +taunt
  bind r reloadcfg
  bind TAB callvote
  +_class_specific_mod
}
//i don't really understand why +helpme is even a thing; it acts just like voicemenu 0 0
alias "-mod" {
  bind ` changeclass
  bind ESCAPE cancelselect
  bind c voice_menu_3
  bind x voice_menu_2
  bind z voice_menu_1
  bind t say_team
  bind e +helpme
  bind v +voicerecord
  bind q +use_action_slot_item
  bind f +inspect
  bind r +reload
  bind TAB +showscores_info
  -_class_specific_mod
}

exec binds
logo=off
