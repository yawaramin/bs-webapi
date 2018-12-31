rm -rf docs
mkdir docs
ocamldoc \
  -html \
  -css-style style.css \
  -colorize-code \
  -d docs \
  -I node_modules/bs-platform/lib/ocaml \
  -I lib/bs/src/Yawaramin_BsWebapi \
  -I lib/bs/src \
  -ppx /usr/local/lib/node_modules/bs-platform/lib/bsppx.exe \
  src/Yawaramin_BsWebapi/*.mli \
  src/Yawaramin_BsWebapi.ml
cp style.css docs
cp docs/Yawaramin_BsWebapi.html docs/index.html
