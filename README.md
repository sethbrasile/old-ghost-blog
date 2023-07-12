My Personal Blog
-----

*Note: I don't use this any more, this is really old*

---

This blog runs by starting 3 docker containers.  A ghost container, a volume container, and a proxy container.

config.js points to the sqlite db in the volume created by the volume container, so you can feel free to destroy the ghost container as often as you'd like and your sqlite database will still be intact. This makes updating and migrating EZ.

## Changes you need to make before starting:

### config.js
(all changes here are under the 'production' section)
- change URL to the URL that you will be using to access this blog
- change mail options (there are guides for this on ghost's site)
- (optional, under database -> connection -> filename) change the name of the sqlite db file that ghost will generate
 
### startBlog.sh
- change www.example.com to the URL that you will be using to access this blog (this allows the proxy container to auto-route your traffic to the correct port)
- change the port (currently 49154) to whatever port you would like this blog accessible at on your host machine.  This will be "-p 80:2368" if you aren't planning on using the proxy (to host multiple sites), or it can be "-p 2368" if you would like docker to auto-assign the port.
- (optional) if the directory containing config.js and your content directory is not "~/blog/" then change "-v ~/blog" to match.
- decide whether you want google pagespeed to run for this blog on the proxy container.
- "-e PAGESPEED=1" means yes.
- "-e PAGESPEED=0" means no.


## Instructions to start

Make sure config.js (and if you want, content/)is in the directory specified in startBlog.sh, "-v ~/blog:/ghost-override"
If you want to add themes or css, anything in the "content" directory will override ghost's default content directory (there are a couple themes already in there). Delete the content directory if you would like to use ghosts defaults.


from your docker-enabled command prompt, run:

(the order doesn't matter)

`./startVol.sh`

`./startBlog.sh`

`./startProxy.sh`


