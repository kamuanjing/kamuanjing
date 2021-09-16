user=( `cat /home/listip.txt | grep '^###' | cut -d ' ' -f 3`)
data=( `cat /home/listip.txt | grep '^###' | cut -d ' ' -f 5`);
now=`date +"%Y-%m-%d"`
for ip in "${data[@]}"
do
exp=$(grep -w "^### $user" "/home/listip.txt" | cut -d ' ' -f 7)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" = "0" ]]; then
sed -i "/^### | $user | $ip | $exp/d" /home/listip.txt
sed -i "/^$ip/d" /home/vps/public_html/akses/token
fi
done
