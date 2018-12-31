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

First, ensure you have `bs-platform` installed globally:

    npm i -g bs-platform

Then, link it into this project:

    npm link bs-platform

Then, build:

    npm run build

# Watch

    npm run watch

## Build Docs

You will need `ocamldoc` installed globally. Then:

    npm run docs

Will put the API documentation in the `docs` subdirectory.

If you're not on a Mac or have `bs-platform` in a non-standard location,
you'll need to adjust the path to `bsppx.exe` (which processes
BuckleScript bindings so that the right types get sent to `ocamldoc`).
