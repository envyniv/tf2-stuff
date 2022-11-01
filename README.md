# my TF2 custom files

_a collection of scripts, configs and other misc stuff for my TF2 experience._

mainly aimed at linux based systems, but windows is somewhat supported. MacOS isn't since Steam dropped support for it (?)

## prerequisites

- python3
- wine

## contains

- weapon icons (replaces crosshair, uses weapon scripts)
- killsounds extracted from [dot96 - MAKE IT FUNKY NOW](https://soundcloud.com/dot96/make-it-funky-nowbms-edit)
- custom settings menu
- installation script
- clovervidia's captions
- mastercomfig

## how to install

- clone this repo into your `tf/custom` folder.
- in tf2's lauch args, put `python3 tf/custom/tf2-stuff/pre-game.py && %command%`.
- - additionally, if you want to remove ambient sounds, add `noambient` after `pre-game.py`

- - additionally, if you want low VRAM optimizations, add `lovmem`

- - additionally, if you have already downloaded a custom HUD, add `hud=<hud_name>` <!--

- - additionally, you can choose a custom video preset by adding `vid=<video preset>`
  - - - `<video preset>` can be one of the following: - - - - `none` (default) - - - - `ultra` - - - - `medium-high` - - - - `medium` - - - - `medium-low` - - - - `medium` - - - - `low` - - - - `very-low` -->

  - boot the game. It may take its time the first time around.

## mods I use alongside this

[Hands B-Gone!](https://gamebanana.com/mods/205744) (No Swaymotion version)

[The Ultimate TF2 Visual Fix Pack](https://github.com/agrastiOs/Ultimate-TF2-Visual-Fix-Pack) (will only work on sv_pure 0)

## TODO:

- [ ] Remake all weapon icons in a consistent style, and in svg format
- [X] release script
- [ ] add more hitsounds
- [ ] convert Adv. Settings to mastercomfig module commands
- [X] automatic installation script (will download mastercomfig and this, and then execute release.py)
- [ ] installation script github probing
- [ ] Rewrite SourceScript 2 in python

## Additional thanks

- [Decimation](https://gamebanana.com/members/1449640) for their Adv. Settings Menu
- [mastercoms](https://github.com/mastercoms) for mastercomfig
