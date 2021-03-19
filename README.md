# attackbox_script
script que automatiza la carga de herramientas útiles y el reconocimiento inicial de una máquina de Tryhackme


Usage:
bash attack.sh \<ip\> \<domainname\>
  
Example
bash attack.sh 10.10.11.12 reloaded.thm

<hr>
<h5>
Features:<br>
Instala xclip cewl jq html2text crunch<br>
Crea una revershell.php basada en Pentestmonkey y agrega la ip que tengamos actualemente con puerto 4545 (mishell.php)<br>
Copia linpeas.sh a la carpeta actual de trabajo<br>
Copia rockyou.txt a la raiz del disco para evitar el /usr/share/wordlist/<br>
Copia el directory-list-2.3-medium.txt a la raiz del disco para evitar escribir /usr/share/wordlists/dirbuster/<br>
Agrega la ip y nombre que necesitemos al /etc/hosts<br>
Carga firefox con la IP a revisar para mirar su página web de omisión<br>
Ejecuta un escaneo rápido de todos los puertos de la victima (nmap -p- --min-rate=5000 -n -Pn -oN allports ) y lo guarda en un archivo allports<br>
Ejecuta un escaneo avanzado a los puertos que haya encontrado abiertos (nmap -A -oN targeted ) y lo almacena en un archivo targeted<br>
</h5>


Update:
Se agrega un grep para retirar del directory23medium las filas con más de 30 caracteres dado que para pentensting demo no son necesarios y agiliza las respuestas.
