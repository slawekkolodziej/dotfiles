#!/bin/bash

# install e-deklaracje
curl -O http://www.e-deklaracje.gov.pl/files/dopobrania/e-dek/app/e-DeklaracjeDesktop.air && open ./e-DeklaracjeDesktop.air

# Report whether various apps was found
function check() {
  APPNAME=`basename "/Applications/$1"`
  if [ ! -d "/Applications/$1" ]; then
    if [ ! -d "$HOME/Applications/$1" ]; then
      echo -e "\033[41m* $APPNAME is not installed\033[49m"
    fi
  fi
}


# browser
check "Google Chrome.app"
check "Google Chrome Canary.app"
check "Firefox.app"
check "FirefoxAurora.app"
check "Opera.app"
check "Opera Next.app"

# communication
check "Skype.app"

# network
check "Junos Pulse.app"
check "Sidestep.app"

# dev
check "iTerm.app"
check "Sublime Text.app"
check "Sublime Text 2.app"
check "SourceTree.app"
check "metasploit"
check "xCode.app"

# vm
check "VMware Fusion.app"
check "VirtualBox.app"

# gaphic, movie & text editors
check "Mou.app"
check "Adobe Photoshop CS5/Adobe Photoshop CS5.app"
check "Adobe Illustrator CS5/Adobe Illustrator.app"
check "Adobe Acrobat 9 Pro/Adobe Acrobat Pro.app"
check "Adobe Lightroom 3.app"

# file sharing / backup / download
check "Dropbox.app"
check "uTorrent.app"
check "BitTorrent Sync.app"

# media players
check "VLC.app"
check "Spotify.app"

# various
check "Slate.app"
check "AppCleaner.app"
check "Keka.app"
check "ImageOptim.app"
check "e-Deklaracje.app"

unset check