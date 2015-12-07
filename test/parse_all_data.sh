#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
for var in "$@"
do
  pushd .
  cd "$var"
  $DIR/parse_data.sh 
  $DIR/clean-file.sh *.mat
  popd
done
