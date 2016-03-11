#!/bin/bash
while :
do
  echo "Install other stuff"
  echo "1) e-Deklaracje"
  echo "2) metasploit"
  echo "3) Apache Cordova"
  echo
  echo "q) exit"

  read -n 1 choice
  echo

  case $choice in
    1) echo "Installing e-Deklaracje"
      curl -o ~/Downloads/edeklaracje.air http://www.e-deklaracje.gov.pl/files/dopobrania/e-dek/app/e-DeklaracjeDesktop.air
      sudo open ~/Downloads/edeklaracje.air
      ;;

    2) echo "Installing metasploit"
      git clone git://github.com/rapid7/metasploit-framework ~/metasploit
      ;;

    3) echo "Installing Apache Cordova"
      npm install -g cordova
      ;;

    q) exit 0
      ;;
  esac
done
