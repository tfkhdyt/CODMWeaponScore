#!/bin/env bash
ws(){
  #input
  namaSenjata=$1
  damage=$2
  fireRate=$3
  accuracy=$4
  mobility=$5
  range=$6
  control=$7

  #proses
  DPS=$(( $2 * $3 * $6 / 1000 / 5  ))
  acCMo=$(( ( $4 + $7 ) / 2 * $5 / 100 ))
  
  #output
  echo "-------------------------------------"
  echo "Nama Senjata : $1"
  echo -e "\nDamage       : $2 | Firerate     : $3"
  echo "Accuracy     : $4 | Mobility     : $5"
  echo "Range        : $6 | Control      : $7"
  
  echo -e "\nDPS/Range    : $DPS | Ac/Mo/Co     : $acCMo"

  echo -e "\nTotal score  : $(( ( $DPS + $acCMo ) / 2 ))"
  echo "-------------------------------------"
  exit
}
