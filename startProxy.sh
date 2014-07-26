docker run -d -p 80:80 -p 443:443 -name proxy -v /var/run/docker.sock:/tmp/docker.sock -t sethbrasile/nginx-proxy-pagespeed forego start -r
