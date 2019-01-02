main_module=Yawaramin_BsWebapi

rm -rf docs
mkdir docs
ocamldoc \
  -html \
  -css-style style.css \
  -colorize-code \
  -d docs \
  -I node_modules/bs-platform/lib/ocaml \
  -I lib/bs/src/$main_module \
  -I lib/bs/src \
  -ppx /usr/local/lib/node_modules/bs-platform/lib/bsppx.exe \
  src/$main_module/*.mli \
  src/$main_module.ml
cd docs
cp ../style.css .
cp $main_module.html index.html
node ../src/$main_module/${main_module}_OCamldoc.bs.js
