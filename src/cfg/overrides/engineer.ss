alias "_reloadcfg" "exec user/engineer" // Reload

//wait 50 is so that the click registers, allowing for building
alias "reset" {
  bind MOUSE1 +attack
  bind MOUSE2 +attack2
  wait 50
  -attack
  -attack2
}

alias "buildannounce_s" "say_team Building Sentry!"
alias "buildannounce_d" "say_team Building Dispenser!"
alias "buildannounce_tele" "say_team Building Teleporter Entrance!"
alias "buildannounce_exit" "say_team Building Teleporter Exit!"

alias "desannounce_s" "say_team I've destroyed my Sentry!"
alias "desannounce_d" "say_team I've destroyed my Dispenser!"
alias "desannounce_tele" "say_team I've destroyed my Teleporter Entrance!"
alias "desannounce_exit" "say_team I've destroyed my Teleporter Exit!"

alias atk_s {
  +attack
  buildannounce_s
  reset
}

alias atk_d {
  +attack
  buildannounce_d
  reset
}

alias atk_t {
  +attack
  buildannounce_tele
  reset
}

alias atk_e {
  +attack
  buildannounce_exit
  reset
}


alias build_sentry {
  build 2
  bind MOUSE1 atk_s
}

alias build_dispenser {
  build 0
  bind MOUSE1 atk_d
}

alias build_tele {
  build 1
  bind MOUSE1 atk_t
}

alias build_exit {
  build 3
  bind MOUSE1 atk_e
}

alias +_class_specific_mod {
  bind 1 build_sentry
  bind 2 build_dispenser
  bind 3 build_tele
  bind 4 build_exit
}

//slot 4 is missing because we will be using LALT + <building n.> to build
alias -_class_specific_mod {
  bind 1 slot1
  bind 2 slot2
  bind 3 slot3
  bind 4 slot5
}

unbind 5;unbind 6;unbind 7;unbind 8;unbind 9;unbind 0 // unbind useless keys
-_class_specific_mod                                       // this will set slot binds
reset                                                      // mouse key binds