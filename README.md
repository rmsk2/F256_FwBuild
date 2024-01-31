# F256_FwBuild

In order to use this script you need a Linux machine (I used a stock debian 12). On this machine you have to 
install at least

- `python-is-python3` SuperBasic expects to call the python interpreter as `python`
- `64tass`, which can be downloaded here: https://sourceforge.net/projects/tass64/. In order to build it you need an installed `gcc`
- `Merlin32`, which can be downloaded here: https://github.com/lroathe/merlin32 . This is a source repo. You will need `gcc` to build Merlin32
- `cc65`, See here https://github.com/cc65/cc65. You also have to build this from source.
- `zip`, which is not part of the standard install


In order to build the latest firmware for the F256 Jr. and K you have to clone this repo, change into the 
new directory and run the script `clone_f256.sh`. If that succeeded run the script `buildfw_f256.sh`. If
that succeeds you will find all the necessary files to flash the latest firmware of your Foenix 256 in 
the `bin` directory. All the files in this directory have to be copied into the `firmware` directory of
the latest "official" firmware release which can be found 
[here](https://github.com/FoenixRetro/f256-firmware/releases/download/release-2023.5/f256_firmware_2023.5.zip).
After that the new firmware can be flashed. I have not done a lot of testing, but after flashing the output of these scripts to
the machine it still boots and can execute BASIC programs. `pexec` and the BASIC help system also seem to work.

The build instructions for the repos have been copied from [here](https://github.com/FoenixRetro/f256-firmware/blob/main/.justfile). The
release contains a prebuilt set of `bin` files in the file ` f256_firmware_2024.1_mgr42.zip`.