#!/bin/bash
ASE="$1"
ASEVERSION="$2"

mv ${ASE}.properties ${ASE}__${ASEVERSION}.properties

exit 0
