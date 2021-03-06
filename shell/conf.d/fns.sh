mkd() {
  for dir in "$@"; do
    mkdir "$dir"
    cd "$dir"
  done
}

pwg() {
  pwgen -cnsB ${1-64} 1 | tr -d '\n' | pbcopy;
  printf "Copied: " && pbpaste && printf "\n";
}

mozjpeg() {
  if [ "$#" -ne 3 ]; then
    echo "Usage: $0 quality infile outfile"
  else
    /usr/local/opt/mozjpeg/bin/cjpeg -quality $1 "$2" -outfile "$3"
  fi
}

findMAC() {
  echo "Current" $(route get google.com | grep interface)

  local BROADCAST_IP=$(ifconfig | grep broadcast | rev | cut -d " " -f1 | rev)
  echo "Broadcast IP:" $BROADCAST_IP

  local MAP_RANGE=$(echo "$BROADCAST_IP" | rev | cut -d "." -f 2- | rev)
  MAP_RANGE+=".0-255"
  echo "Mapping:" $MAP_RANGE
  nmap -T5 -sP $MAP_RANGE
  echo
  echo "MAC addresses for SSID" $1
  airport -s | grep $1 | awk '{ print $2 }'
  echo
  echo "ARP"
  arp -a | grep -v "(incomplete)"
}

findText() {
  find . -name '*' -type f -exec grep "$@" {} \;
}

alive() {
  while : ; do
    "$@" \
      && break \
      || sleep 0.5s
  done
}

