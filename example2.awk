#!/usr/bin/awk -f



NR > 1 {
    printf "%d: %s\n",NR,$0
}