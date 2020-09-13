#!/usr/bin/awk -f

BEGIN {
    FS=" ";
}

$1 == "strawberry" {
    gsub(/red/,"pi");
    print;
}


