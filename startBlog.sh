docker run -e PAGESPEED=1 -e VIRTUAL_HOST=sethbrasile.geekedout.biz --volumes-from blogVol -name blog -d -p 49154:2368 -v ~/blog:/ghost-override dockerfile/ghost
