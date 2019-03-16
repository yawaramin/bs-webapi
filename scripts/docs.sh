main_module=Yawaramin_BsWebapi

rm docs/*.html
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
  src/$main_module/*.ml \
  src/$main_module.ml
cd docs
rm *${main_module}.*.html
node ../src/OCamldoc.bs.js
cp index.html.template index.html
