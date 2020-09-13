#!/usr/bin/awk -f


$1 == "strawberry" {
    gsub(/red/,"pi")
}

{print}