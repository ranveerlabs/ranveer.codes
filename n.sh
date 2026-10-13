#!/usr/bin/env bash
for ((row=0; row<9; row++)); do
    for ((col=0; col<9; col++)); do
        if ((col == 0 || col == 8 || row == col)); then 
            printf '#'
        else
            printf '.'
        fi
    done
    echo
done
