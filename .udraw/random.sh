#!/bin/sh

cow=$(ls $COWPATH | shuf -n 1)
udraw -f $COWPATH/$cow
