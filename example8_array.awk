#!/usr/bin/awk -f

BEGIN{
    FS=" ";
    OFS="\t";
    print("color\tsum");
}

NR !=1 {
    a[$2]+=$3;
}

END{
    for (b in a){
        print b, a[b]
    }
}