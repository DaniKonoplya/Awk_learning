#!/usr/bin/awk -f

NR > 1 {
    printf "The %s is classified as: ",$1

    switch($1) {
        case "apple":
            print "a fruit, pome"
            break
        case "banana":
        case "grape":
        case "kiwi":
            print "a fruit, berry"
            break
        case "raspberry":
            print "a computer, pi"
            break
        case "plum":
            print "a fruit, drupe"
            break
        case "pineapple":
            print "a fruit,fused berries (syncarp)"
            break
        case "potato":
            print "a vegetable, tuber"
            break
        default:
            print "[unclassified]"
    }
}