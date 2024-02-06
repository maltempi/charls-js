#!/bin/sh
rm- rf ./build
mkdir -p build
#(cd build && emconfigure cmake -DCMAKE_BUILD_TYPE=Debug ..)
(cd build && emcmake cmake ..)
(cd build && emmake make VERBOSE=1 -j ${nprocs})
cp ./build/src/charlsjs.js ./dist
cp ./build/src/charlsjs.wasm ./dist
#(cd test/node; npm run test)
