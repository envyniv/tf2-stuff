#!/bin/python3
# this is the script that "compiles" all source files into files usable by tf2

from sys import platform
from subprocess import run, PIPE
from SourceScript import parse
from os import listdir

iconSrcDir: str = ""
vtexCmd: str = "bin/vtex.exe"

#establish platform
if platform == "linux":
    vtexCmd = "wine "+vtexCmd

#convert svgs to tga

#svg -> tga 64*64px -> vtf
# https://developer.valvesoftware.com/wiki/Vtex_(Source_1)
# https://developer.valvesoftware.com/wiki/Vtex_CLI_use

def main() -> None:
    """
    Where the magic happens.
    """
    return

def vtex(files: list):
    """
    Runs vtex, converting tga to vtf, and generating a vmt.

    `files` is a list of tga filenames.
    """
    run([vtexCmd, "-quickconvert", "-dontusegamedir", "-shader", "LightmappedGeneric"].append(files[:]))
    return

def iterIcons():
    """
    Iterate over every icon SVG file, convert into targa and scale down to 64*64
    """

    allIcons = []
    for filename in listdir(directory):
        if filename.endswith(".svg"):                   #svg to 64*64px tga
            pass
        allIcons.append(filename)
    vtex(allIcons)
    return

#txt -> dat - captioncompiler
# https://developer.valvesoftware.com/wiki/Closed_Captions#Compiling

#grab tf2's tf_english.txt and cat tf2-stuff's to it

#grab https://gamebanana.com/mods/314843

#SourceScript -> cfg


main()
