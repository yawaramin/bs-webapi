# (WIP) BuckleScript Web API Bindings

The JavaScript Web APIs are notoriously object-oriented, making them
tricky to model using simple functional data types.

This package of bindings takes advantage of the fact that OCaml's
polymorphic variant types obey the laws of subtyping (`[< ...]` means
supertype and `[> ...]` means subtype) to use them as phantom type tags,
for a type which represents the entire Web API inheritance tree starting
from `EventTarget`.

Right now, this package is just a proof-of-concept; if it proves to
scale, I will cover more and more of the Web API surface area, as time
allows. PRs welcome!

## API Documentation

See https://yawaramin.github.io/bs-webapi

## Build

    bsb -make-world

# Watch

    bsb -w
