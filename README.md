# noise

A [LV2](http://lv2plug.in) plug-in as example code for the
[Programmable Audio Workshop](http://faust.grame.fr/paw/) to exercise
how to compile [Faust](http://faust.grame.fr/) code for the [MOD
Duo](https://www.moddevices.com/products/mod-duo).

## Build

```bash
$ make
```

## Install

```bash
$ sudo make install
```
will copy the `noise.lv2` directory into
`$PREFIX/lib/lv2/`. By default `$PREFIX` is set to `/usr/local`.
