#!/usr/bin/awk -f

BEGIN {
    # ignore 1 or more consecutive occurrences of the characters in the character group below

    FS="[ .,:;()<>{}@!\"'\t]+";
}

{
    for (i=1; i <= NF; i++) {
        if ($i != ""){
            words[$i]++;
        }
    }
}

END {
    sort_head = "sort -k2 -nr | head -n 20";
    # this is the way of piping for awk that can be used to pipe all output 
    for (word in words){
        printf "%s\t%d\n", word, words[word] | sort_head;
    }
    close(sort_head);

}