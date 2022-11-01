#!/bin/python3
# This is the python script executed before tf2 starts

#TF2 launch arg should be "python3 tf/custom/tf2-stuff/pre-game.py <arguments> && %command%"

#script runs with workdir in game folder

#~/.steam/steam/steamapps/common/Team Fortress 2
#~/.steam/steam/ubuntu12_32/steamapps/content/app_440/depot_232251
#../../../ubuntu12_32/steamapps/content/app_440/depot_232251

from sys import platform
from sys import argv
import os
import requests
#from webbrowser import open
import time

download = "https://github.com/mastercomfig/mastercomfig/releases/latest/download/"
files   = []
nodepot = False

customfolder = "tf/custom/"

opengl     = "mastercomfig-opengl-addon.vpk"
flatmouse  = "mastercomfig-flat-mouse-addon.vpk"
notutorial = "mastercomfig-no-tutorial-addon.vpk"
nullx      = "mastercomfig-null-canceling-movement-addon.vpk"
lowmem     = "mastercomfig-lowmem-addon.vpk" #argument - low vram optimizations
nopyrovis  = "mastercomfig-disable-pyroland-addon.vpk"
noambient  = "mastercomfig-no-soundscapes-addon.vpk" #argument - no soundscapes

chosen = "none"

hud = ""


#TODO: add github release page probing, to replace filename variables

log = open("tf2-stuff.log", "a")

log.write("\n\n\n\n"+time.asctime(time.localtime(time.time())))


caches = []

for root, dirs, files in os.walk(customfolder):
    for file in files:
        caches.append(os.path.join(root,file))
for name in caches:
    if name.endswith(".cache"):
        log.write("\nRemoving "+name)
        #os.remove(name)

for argument in argv:
    if argument == "noambient":
        files.append(noambient)
    elif argument == "lovmem": # potentially replace this with some check
        files.append(lowmem)
    elif "hud=" in argument:
        hud = argument
        hud.replace("hud=", '')
    #elif "vid=" in argument:
    #    chosen = argument
    #    chosen.replace("vid=", '')

core = "mastercomfig-"+chosen+"-preset.vpk"

log.write('\nRunning on '+platform)

if platform == "linux":
    files.append(opengl)
    nodepot = os.path.isdir("../../../ubuntu12_32/steamapps/content/app_440/depot_232251")
    if not nodepot:
        log.write('\nWindows client depot not found; \n ~~~~~NEXT STEP: Open the steam console and input command "download_depot 440 232251"')
        exit()
    #    webbrowser.open('steam:"download_depot 440 232251"') #download windows sdk

files.append(notutorial)
files.append(nullx)
files.append(flatmouse)
files.append(nopyrovis)

files.append(core)


for filename in files:
    log.write("\nDownloading "+filename)
    with open(customfolder+filename, "wb") as f:
        response = requests.get(download+filename)
        f.write(response.content)
        f.close()
    log.write("\nDownloaded "+filename)

"""
match hud:
    case "toonhud":
        print("editing toonhud")
        with open(customfolder+hud+"/hudlayout.res") as file:
            textdict = file.split("HudCrosshair",0) #generated res files have CRLF
"""
log.close()

# download latest mastercomfig
