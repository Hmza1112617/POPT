clear
echo -e "\e[1;36m
██████╗  ██████╗ ██████╗ ████████╗
██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝
██████╔╝██║   ██║██████╔╝   ██║
██╔═══╝ ██║   ██║██╔═══╝    ██║
██║     ╚██████╔╝██║        ██║
╚═╝      ╚═════╝ ╚═╝        ╚═╝
\e[0m"
echo "TG @DRR_R2 - @cybersecurityTemDF"
echo ""
read -p "enter ip or web link: " tg
echo ""
read -p "enter num threads (200 - 600): " th
echo ""
echo -e "\e[1;33mScan: $tg\e[0m"
echo ""

sc() {
    timeout 15 bash -c "echo > /dev/tcp/$tg/$1" >/dev/null 2>&1 && \
    echo -e "\e[1;32m[OPEN]\e[0m PORT $1"
}

mj=$th
cj=0

for p in {1..8000}; do
    sc $p &
    let "cj+=1"
    if [[ $cj -ge $mj ]]; then
        wait
        cj=0
    fi
done

wait

echo ""
echo -e "\e[1;36mTHE END.\e[0m"
