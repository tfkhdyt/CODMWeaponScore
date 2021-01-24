#!/bin/bash
ws{
  #input
  namaSenjata=$1
  damage=$2
  fireRate=$3
  accuracy=$4
  mobility=$5
  control=$6

  #proses
  DPS=$(( $2 * $3 / 100  ))
  acCMo=$(( ( $4 + $6 ) / 2 * $5 / 100 ))
  
  #output
  echo "Nama Senjata : $1"
  echo "Damage       : $2 | Firerate     : $3"
  echo "Accuracy     : $4 | Mobility     : $5"
  echo "Control      : $6"
  
  echo -e "\nDPS          : $DPS | Acc/Cont/Mob : $acCMo"

  echo -e "\nTotal score  : $(( ( $DPS + $acCMo ) / 2 ))
}
