alias dis_scout_ally "disguise 1 -2"
alias dis_soldier_ally "disguise 3 -2"
alias dis_pyro_ally "disguise 7 -2"
alias dis_demo_ally "disguise 4 -2"
alias dis_heavy_ally "disguise 6 -2"
alias dis_engie_ally "disguise 9 -2"
alias dis_medic_ally "disguise 5 -2"
alias dis_sniper_ally "disguise 2 -2"
alias dis_spy_ally "disguise 8 -2" //essentially undisguise

alias dis_scout_enmy "disguise 1 -1"
alias dis_soldier_enmy "disguise 3 -1"
alias dis_pyro_enmy "disguise 7 -1"
alias dis_demo_enmy "disguise 4 -1"
alias dis_heavy_enmy "disguise 6 -1"
alias dis_engie_enmy "disguise 9 -1"
alias dis_medic_enmy "disguise 5 -1"
alias dis_sniper_enmy "disguise 2 -1"
alias dis_spy_enmy "disguise 8 -1"

alias "+teamswitcher" {
  bind KP_END dis_scout_ally
  bind KP_DOWNARROW dis_soldier_ally
  bind KP_PGDN dis_pyro_ally
  bind KP_LEFTARROW dis_demo_ally
  bind KP_5 dis_heavy_ally
  bind KP_RIGHTARROW dis_engie_ally
  bind KP_HOME dis_medic_ally
  bind KP_UPARROW dis_sniper_ally
  bind KP_PGUP dis_spy_ally
}

alias "-teamswitcher" {
  bind KP_END dis_scout_enmy
  bind KP_DOWNARROW dis_soldier_enmy
  bind KP_PGDN dis_pyro_enmy
  bind KP_LEFTARROW dis_demo_enmy
  bind KP_5 dis_heavy_enmy
  bind KP_RIGHTARROW dis_engie_enmy
  bind KP_HOME dis_medic_enmy
  bind KP_UPARROW dis_sniper_enmy
  bind KP_PGUP dis_spy_enmy
}