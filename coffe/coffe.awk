#!/usr/bin/awk -f

BEGIN {
    FS=":";
    }

    $1 == "member" {
        members[$2]=$3;
        debt[$2]=$4;
        total_members += $3;
        next;
    }

    $1 == "payment" {
        debt[$2] -= $3;
        next;
    }

    $1 == "payback" {
        debt[$2] += $3;
        next;
    }

    $1 == "bought" {
        debt[$2] -= $3;
        per_member = $3/total_members;
        for (x in members){
            debt[x] += per_member * members[x];
        }
        next;
    }

END {
    for (x in members){
        printf "%s:%s:%s\n", x, members[x], debt[x]
    }
}
