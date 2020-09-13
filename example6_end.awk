#!/usr/bin/awk -f

$1 != "tmpfs" {
    used += $3;
    available += $4;
}

END {
    printf "%d GiB used\n%d GiB available\n", used/2^20, available/2^20;
}

# df -l | awk -f example6_end.awk