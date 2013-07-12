dummygrib
=========

Dummy GRIB library to use with the Met Office Unified Model.

The UM makes use of a proprietary library to decode GRIB files, which is not
available to all licensors of the model. This library provides stub functions
that can be linked in place of the GRIB library to avoid compiler errors.

Note that these stubs will fail unconditionally, no logic is included in them.

Compile with:

    make

then add `-L/path/to/dummygrib -ldummygrib` to your LDFLAGS when building the
UM.


