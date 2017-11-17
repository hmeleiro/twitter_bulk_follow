# Twitter bulk follow and unfollow
This R script creates a function that lets you do a massive and automatize follow and unfollow.

# Instructions 
The bulk_follow function takes two arguments:

bulk_follow(x, y)
 
x = the Twitter user from which it will extract a list of twitter users to follow.
y = the number of Twitter users you want to follow.


The script generates two other scripts, one to bulk follow and another one to bulk unfollow the same users. Keep in mind that between each follow the script waits 20 seconds so Twitter wont recognize the automatization. That means that if you want to follow 1.000 users the scripts needs 5,5 hours to run completely.

# Requirementes
This scripts requires the Rtweet package to be installed: http://rtweet.info/

It also needs to have configured rtweet with the account with which you want to do the bulk following.
