# Animal Crossing Patch Loader

This is a patch loader for Animal Crossing NES ROM files implemented in C.

The big patch format is based on Cuyler36's assembly patch loader, with an additional
integer at the beginning indicating the number of patches to load.

## Patch format

The first 32 bits contain global settings flags and the number of patches to load:

    [16bit flags] [16bit n_patches]

For each patch, the format is:

    [32bit address] [32bit size] [32bit flags] [patch_bytes]


## Building

This requires the devkitPro tools to build.
See <https://devkitpro.org/wiki/Getting_Started> for how to install `devkitpro` and `gamecube-dev`.

With `gamecube-dev` installed, just run `make`. The output will include a `.patch` file that holds the generated code to patch in.
