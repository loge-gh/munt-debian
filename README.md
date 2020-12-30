munt-debian
===========

This repo is an attempt of debianiztion of dosbox (https://sourceforge.net/projects/dosbox) with MT-32 support provided by Munt (https://github.com/munt/munt).

mt32emu folder contains the static library of synthesizer itself. This is needed only for building of dosbox with mt32 support.

dosbox folder contains the dosbox release 0.74-3 with debian patches and with mt32-asynctread patch (https://github.com/munt/munt/tree/master/DOSBox-mt32-patch).

dosbox config with MT-32 enabled should be like:

```
[midi]
mpu401=intelligent
mididevice=mt32
mt32.romdir=/usr/local/share/mt32-roms
mt32.thread=true
```

mt32.romdir default is ./

Munt patch prefers CM32L ROM over MT32 ROM if both are present in mt32.romdir.

There's another options like
```
mt32.reverse.stereo
mt32.verbose
mt32.dac
mt32.reverb.mode
mt32.reverb.time
mt32.reverb.level
mt32.partials
mt32.rate
mt32.chunk
mt32.prebuffer
mt32.analog
mt32.src.qualitya
mt32.nicepreamp
```
They're described in the mt32options.h section of the mt32-asyncthread patch source.

Tested on buster-amd64.

