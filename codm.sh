#!/data/data/com.termux/files/usr/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
ws(){ 
  if [[ $1 == "-h" || $1 == "--help" ]]; then
    echo "Petunjuk penggunaan:"
    echo -e "  ws [Nama Senjata] [Damage] [Fire rate] [Accuracy] [Mobility] [Range] [Control]"
    echo -e 'Contoh:\n  ws QXR 38 81 86 78 42 51'
    echo -e "\nUntuk nama senjata yang menggunakan spasi, gunakan tanda petik ganda di awal dan akhir nama senjata"
    echo -e 'Contoh:\n  ws "DR-H OTM" 67 57 63 58 54 52'
    echo -e "\nUntuk membandingkan dua senjata sekaligus, gunakan perintah seperti berikut:"
    echo -e '  ws "SCAR 17" 67 57 75 62 54 53 && \ \n  ws "FR 5.56 Polos" 41 65 60 77 60 55 '
    return 1
  fi

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
  echo "\n  ${bold}Nama Senjata : $1 ${normal}"
  echo "+------------------------------------+"
  echo "| Damage       : $damage | Fire rate : $fireRate |"
  echo "| Accuracy     : $accuracy | Mobility  : $mobility |"
  echo "| Range        : $range | Control   : $control |"
  echo "| DPS/Range    : $DPS | Ac/Mo/Co  : $acCMo |"
  echo "| Total score  : ${bold}$(( ( $DPS + $acCMo ) / 2 ))${normal}                  |"
  echo "+------------------------------------+"
}

