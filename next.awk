#!/usr/bin/awk -f

NR == 1 { next }

length($2) < 6 { 
    skip[NR] = $0
    next
}

{
    print
}

END {
    printf "\nSkipped:\n"
    for (n in skip){
        print n": "skip[n]
    }
}
