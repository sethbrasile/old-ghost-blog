docker run -e PAGESPEED=1 -e VIRTUAL_HOST=www.example.com --volumes-from blogVol --name blog -d -p 49154:2368 -v ~/blog:/ghost-override dockerfile/ghost
