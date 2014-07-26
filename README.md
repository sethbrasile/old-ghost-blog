##My personal blog

This blog runs by starting 3 docker containers.  A ghost container, a volume container, and a proxy container.

config.js points to the sqlite db in the volume created by the volume container, so you can feel free to destroy the ghost container as often as you'd like and your sqlite database will still be intact. This makes updating and migrating EZ.

(Make sure you replace my information in config.js and startBlog.sh with your own)
