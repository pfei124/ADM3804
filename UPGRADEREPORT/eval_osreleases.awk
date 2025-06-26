#!/bin/gawk -f

## degtlun5440
## VERSION="12-SP5"
## gtunxlci09239
## VERSION="12-SP5"
## gtunxlcj09240
## VERSION="12-SP5"

BEGIN {
    printf "HOSTname;OSrelease;\n"
}

{
  if ( NR % 2 == 1 ) {
    hostname = $1
  }
  if ( NR % 2 == 0 ) {
    release = $1
    #  VERSION="12-SP5";
    sub(/VERSION=/,"",release)
    gsub(/\"/,"",release)

    printf "%s;%s;\n",hostname,release
  }
}

END {
}
