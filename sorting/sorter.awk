#!/usr/bin/awk -f
# ./sorter.awk -v var=NUM FILE


BEGIN { FS=";"; }

{
    ARRAY[$var] = $R;
}

END {
    asorti(ARRAY,SARRAY);

    j = length(SARRAY);

    for (i = 1; i <= j; i++){
        printf("%s %s\n",SARRAY[i],ARRAY[SARRAY[i]]);
    }
} 