#!/bin/bash
echo "python2 example.py -a ptc -u $POKE_USER -p **** -l "$POKE_LOC" -st $POKE_RAD --port $POKE_PORT"
python2 example.py -a ptc -u $POKE_USER -p $POKE_PASS -l "$POKE_LOC" -st $POKE_RAD --port $POKE_PORT
