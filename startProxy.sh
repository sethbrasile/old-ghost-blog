docker run -d -p 80:80 -p 443:443 -e PAGESPEED=1 -v /var/run/docker.sock:/tmp/docker.sock -t sethbrasile/nginx-proxy-pagespeed forego start -r
