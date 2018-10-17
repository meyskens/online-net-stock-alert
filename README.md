Online.net Stock Alert
======================

Do you always complain your favorite dedibox is victim of its own success? Then this bash script will change your life!
Just run it as a cron job every minute and your slack mentions will get spammed once you can order at least 1 of them! 

This is a little bash script out of my collection that I use whenever I needed a sold out server at Online.net, it is handy especially to get the few ones that will be returned at the beginning of the month. 

## How to use?
1) install [slacktee](https://github.com/coursehero/slacktee), this will be used to notify slack
2) install lynx
3) run it as a cron job e.g.
 ```
 * * * * * octocat SLACKTEE_WEBHOOK="https://blah.com/blah" /home/octocat/online.sh
 ```
