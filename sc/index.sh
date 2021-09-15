#!/bin/bash
ip=$(cat /etc/v2ray/domain)
cat> /home/vps/public_html/index.html << END
<!DOCTYPE html>
<html lang="en">

<!-- Simple OVPN Download site -->

<head><meta charset="utf-8" /><title>OpenVPN Config</title><meta name="description" content="Server" /><meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" /><meta name="theme-color" content="#000000" /><link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"><link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"><link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.3/css/mdb.min.css" rel="stylesheet"></head><body><div class="container justify-content-center" style="margin-top:9em;margin-bottom:5em;"><div class="col-md"><div class="view"><img src="https://openvpn.net/wp-content/uploads/openvpn.jpg" class="card-img-top"><div class="mask rgba-white-slight"></div></div><div class="card"><div class="card-body"><h5 class="card-title">List Of Config OpenVPN :</h5><br /><ul class="list-group">

<li class="list-group-item justify-content-between align-items-center" style="margin-bottom:1em;"><p>TCP 1194 <span class="badge light-blue darken-4">Android/iOS/PC/Modem</span><br /><small></small></p><a class="btn btn-outline-success waves-effect btn-sm" href="http://$ip:81/client-tcp-1194.ovpn" style="float:right;"><i class="fa fa-download"></i> Download</a></li>

<li class="list-group-item justify-content-between align-items-center" style="margin-bottom:1em;"><p>UDP 2200 <span class="badge light-blue darken-4">Android/iOS/PC/Modem</span><br /><small></small></p><a class="btn btn-outline-success waves-effect btn-sm" href="http://$ip:81/client-udp-2200.ovpn" style="float:right;"><i class="fa fa-download"></i> Download</a></li>

<li class="list-group-item justify-content-between align-items-center" style="margin-bottom:1em;"><p>SSL 442 <span class="badge light-blue darken-4">Android/iOS/PC/Modem</span><br /><small></small></p><a class="btn btn-outline-success waves-effect btn-sm" href="http://$ip:81/client-tcp-ssl.ovpn" style="float:right;"><i class="fa fa-download"></i> Download</a></li>

<li class="list-group-item justify-content-between align-items-center" style="margin-bottom:1em;"><p> ALL.zip    <span class="badge light-blue darken-4">Android/iOS/PC/Modem</span><br /><small></small></p><a class="btn btn-outline-success waves-effect btn-sm" href="http://$ip:81/all.zip" style="float:right;"><i class="fa fa-download"></i> Download</a></li>
<button onclick="document.location='https://t.me/zxbxns'">Telegram</button>

	<style type="text/css">
		body {
			background-color: white;
			transition: background-color 5s;
		}
	</style> </head> <body>
	<script type="text/javascript">
		var colors = ["red", "orange", "yellow", "green", 
"blue", "indigo", "violet"];
		var i = 1;
		window.setInterval(function(){
			document.body.style.backgroundColor = colors[i];
			i++;
			if (i === colors.length){
				i=0;
			}
		}, 5000);
	</script> </body>
</html>
END

# hapus script
rm -f /root/index.sh
