#!/usr/bin/awk -f

{
    num = $1

    for (divisor = 2; ; divisor++){

        if (num % divisor == 0){
            printf "Smallest divisor of %d is %d\n", num, divisor
            break
        }

        if (divisor * divisor > num){
            printf "%d is prime\n", num
            break
        }
    }
}
