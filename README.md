munt-debian
===========

This repo is my attempt of debianiztion of Munt - MT-32 synthesizer emulator (https://github.com/munt/munt).

mt32emu folder contains the static library of synthesizer itself. This is needed for building of dosbox with mt2 support.

dosbox folder contains the dosbox with debian patches and with mt32-asynctread patch (https://github.com/munt/munt/tree/master/DOSBox-mt32-patch).

Tested on wheezy-amd64.

NOTE: ROMs should be in /usr/share/mt32-rom-data folder.