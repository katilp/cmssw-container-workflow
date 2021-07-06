#!/bin/bash
set  -e


export DUMMY_SET_IN_SCRIPT=NEWVALUE

echo Script set the variable DUMMY_SET_IN_SCRIPT to $DUMMY_SET_IN_SCRIPT  


exec "$@"
