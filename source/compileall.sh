#!/bin/bash

#todo install deps

#http://tclap.sourceforge.net/ #todo add installing dep
#graphicsmagick #todo add installing dep

if ![test -f /usr/lib/pkgconfig/VTFLib13.pc]; then #https://github.com/panzi/VTFLib
  git clone https://github.com/panzi/VTFLib.git
  mkdir VTFLib/build
  cd VTFLib/build
  cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr -DUSE_LIBTXC_DXTN=OFF
  make -j`nproc`
  sudo make install
fi

if ! command -v vtfconv &> /dev/null; then
  git clone https://github.com/Yepoleb/vtfconv
  cd vtfconv
  make
  cd ..
fi

rm ../resources/*.txt #clean all "compiled" localization files

#todo: expand for all possible languages (for i in folder check if original tf2 file exists, merge)
for txt in resources/*.txt; do #stitch updated tf2 english file with custom stuff
  cat ../../../resources/${f##/*} resources/${f##/*} > ../resources/${f##/*}
done

md icons/scaled #temp folder

for f in icons/*.png; do #every icon
  convert "$f" --resize 64x64 icons/scaled/${basename $f} #resize
  echo '"UnlitGeneric"{"$basetexture" "vgui/replay/thumbnails/'${basename $f .png}'" "$nolod" 1 "$translucent" 1}' >"../materials/vgui/replay/thumbnails/${basename $f .png}.vmt" #create vmt file
  vtfconv -f DXT1 icons/scaled/${f##/*} "../materials/vgui/replay/thumbnails/${basename $f .png}.vtf" #convert png to vtf with vtfconv
done
