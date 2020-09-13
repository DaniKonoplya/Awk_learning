#!/usr/bin/awk -f

NR != 1 {
    a[$2]++
}
END {
    for (key in a) {
        print a[key] " " key
    }
}