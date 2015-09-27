#!

name=newsagent
target=$name.hs

echo "compiling application"
stack build


ghc --make $target
find . -type f -name "*.hi" -exec rm -f {} \;
find . -type f -name "*.o"  -exec rm -f {} \;
strip $name

#echo "generating documentation"
#haddock --odir=docs --html --pretty-html --no-warnings $target

