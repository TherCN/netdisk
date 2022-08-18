#!/bin/bash

#!/bin/bash
export WINEPREFIX="$HOME/wine-dirs/wine-prefix"
export WINEVERPATH="$HOME/wine-dirs/wine-install"
export WINESERVER="$WINEVERPATH/bin/wineserver"
export WINELOADER="$WINEVERPATH/bin/wine"
export WINEDLLPATH="$WINEVERPATH/lib:$WINEDLLPATH"
"$WINEVERPATH/bin/wine" "$@"

