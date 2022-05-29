# my TF2 custom files
_intended to be hud agnostic and plug into mastercomfig_

## how to install
### config only
- install [mastercomfig](https://mastercomfig.com/)
- drop folder in your custom, alongside mastercomfig

### crosshair -> weapon icon
- pick your preferred hud
<!--- edit its `scripts/hudlayout.res` and add the following line, inside of the {}s:

```cpp
#base "scripts/cross.res"
```

your file should now look something like:

```cpp
"Resource/HudLayout.res"
{
	#base "scripts/cross.res"

	"Transparent"
	{
		"ControlName"	"ImagePanel"
		"fieldName" 	"Transparent"
		"xpos"			"0"
		"ypos"			"0"
		"zpos"			"-100"
		"wide"			"f0"
		"tall"			"480"
		"visible"		"0" // TVM
		"enabled"		"0" // TVM
		"image"			"replay/thumbnails/transparent"
		"scaleImage"	"1"
	}

	HudPlayerStatus
	{
        ...
	}

	...

}
```

search (Usually CTRL+F) for "HudCrosshair" (without quotes) and strip the file of it and related brackets.-->
- open your hud's `scripts/hudlayout.res` and replace its HudCrosshair with that included in `resource/cross.res`

## mods I use alongside this

[Hands B-Gone!](https://gamebanana.com/mods/205744) (No Swaymotion version)

[The Ultimate TF2 Visual Fix Pack](https://github.com/agrastiOs/Ultimate-TF2-Visual-Fix-Pack) (will only work on sv_pure 0)
