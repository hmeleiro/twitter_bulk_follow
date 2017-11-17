bulk_follow <- function(x, y, file_follows = "follows.R", file_unfollows = "unfollows.R") {
  library('rtweet')
  seguidores <- get_followers(user = "x", n = y, token = twitter_token)
  
  seguidores$A <- "post_follow(user = "
  seguidores$B <- ", token = twitter_token)"
  
  seguidores$C <- paste0(seguidores$A,"'", seguidores$user_id, "'", seguidores$B)
  
  seguidores$A_u <- "post_unfollow_user(user = "
  seguidores$B_u <- ", token = twitter_token)"
  
  seguidores$C_u <- paste0(seguidores$A_u, "'", seguidores$user_id, "'", seguidores$B_u)
  
  archivo.follow <- file(file_follows)
  writeLines(text = seguidores$C, archivo, sep = "\nSys.sleep(20)\n")
  close(archivo)
  
  archivo.unfollow <- file(file_unfollows)
  writeLines(text = seguidores$C_u, archivo, sep = "\nSys.sleep(20)\n")
  close(archivo)
}