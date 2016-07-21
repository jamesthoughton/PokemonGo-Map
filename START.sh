#!/bin/bash
while true; do
    . exports/cameron/0.sh
    echo "python2 example.py -a ptc -u $POKE_USER -p **** -l "$POKE_LOC" -st $POKE_RAD --port $POKE_PORT";
    python2 example.py -a ptc -u $POKE_USER -p $POKE_PASS -l "$POKE_LOC" -st $POKE_RAD --port $POKE_PORT &

    . exports/cameron/1.sh
    echo "python2 example.py -a ptc -u $POKE_USER -p **** -l "$POKE_LOC" -st $POKE_RAD --port $POKE_PORT";
    python2 example.py -a ptc -u $POKE_USER -p $POKE_PASS -l "$POKE_LOC" -st $POKE_RAD --port $POKE_PORT &

    . exports/dan/0.sh
    echo "python2 example.py -a ptc -u $POKE_USER -p **** -l "$POKE_LOC" -st $POKE_RAD --port $POKE_PORT";
    python2 example.py -a ptc -u $POKE_USER -p $POKE_PASS -l "$POKE_LOC" -st $POKE_RAD --port $POKE_PORT &

    . exports/dan/1.sh
    echo "python2 example.py -a ptc -u $POKE_USER -p **** -l "$POKE_LOC" -st $POKE_RAD --port $POKE_PORT";
    python2 example.py -a ptc -u $POKE_USER -p $POKE_PASS -l "$POKE_LOC" -st $POKE_RAD --port $POKE_PORT &

    # j=$!;
    sleep 1000;
    echo "Restarting";
    # echo "kill -2 $j";
    # kill -2 $j;
    pkill python2;
done;
