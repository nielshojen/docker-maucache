#/bin/bash

service nginx start

/usr/local/MAUCacheAdmin --CachePath:/var/www/html --CheckInterval:15
