#' adds_per_user
#'
#' @description stats of user in terms of additions for the requested repository by the end user.
#' @param current_user current user
#'
#' @return dataframe based on user input
#'
#' @export
#'
#' @examples
#' \dontrun{
#' adds_per_user('mattip')
#' }
adds_per_user <- function(current_user) {
  df_adds<-current_user|>dplyr::group_by(w)|>dplyr::summarise(adds=sum(a))|>dplyr::arrange(desc(w))

  if (length(df_adds) == 0) {
    stop("This user has no data.")}
  return(df_adds)
}

#' deletes_per_user
#'
#' @description stats of user in terms of deletions for the requested repository by the end user.
#' @param current_user current user
#'
#' @return dataframe based on user input
#'
#' @export
#'
#' @examples
#' \dontrun{
#' deletes_per_user('mattip')
#' }
deletes_per_user <- function(current_user) {
  df_deletes<-current_user|>dplyr::group_by(w)|>dplyr::summarise(deletes=sum(d))|>dplyr::arrange(desc(w))
  if (length(df_deletes) == 0) {
    stop("This user has no data.")}

  return(df_deletes)
}

#' commits_per_user
#'
#' @description stats of user in terms of commits for the requested repository by the end user.
#' @param current_user current user
#'
#' @return dataframe based on user input
#'
#' @export
#'
#' @examples
#' \dontrun{
#' commits_per_user('mattip')
#' }
commits_per_user <- function(current_user) {
  df_commits<-current_user|>dplyr::group_by(w)|>dplyr::summarise(commits=sum(c))|>dplyr::arrange(desc(w))
  if (length(df_commits) == 0) {
    stop("This user has no data.")}

  return(df_commits)
}

#' everything_per_user
#'
#' @description stats of user in terms of additions,deletes,commits for the requested repository by the end user.
#' @param current_user current user
#'
#' @return dataframe based on user input
#'
#' @export
#'
#' @examples
#' \dontrun{
#' everything_per_user('mattip')
#' }
everything_per_user <- function(current_user) {
  df_everything<-current_user|>dplyr::group_by(w)|>dplyr::summarise(commits=sum(c), additions=sum(a), deletions=sum(d))|>dplyr::arrange(desc(w))
  if (length(df_everything) == 0) {
    stop("This user has no data.")}

  return(df_everything)
}

#' adds_per_user_viz
#'
#' @description it gives the option of showing visualization/trends/time series plots of additions of the github user for the requested repository by the end user.
#' @param current_user current user
#'
#' @return dataframe based on user input
#'
#' @export
#'
#' @examples
#' \dontrun{
#' adds_per_user_viz('mattip')
#' }
adds_per_user_viz<-function(current_user)
{
  options(repr.plot.width=16, repr.plot.height=8)
  p <- ggplot2::ggplot(adds_per_user(current_user), ggplot2::aes(x=w, y=adds)) +
    ggplot2::geom_line(color="green3", size=0.8) +
    ggplot2::xlab("Year")+ggplot2::ylab("Adds") + ggplot2::theme_bw() + ggplot2::theme(axis.text=ggplot2::element_text(size=16, face="bold"),
                                                                                       axis.title=ggplot2::element_text(size=19,face="bold"))
  return(p)
}

#' deletes_per_user_viz
#'
#' @description it gives the option of showing visualization/trends/time series plots of deletions of the github user for the requested repository by the end user.
#' @param current_user current user
#'
#' @return dataframe based on user input
#'
#' @export
#'
#' @examples
#' \dontrun{
#' deletes_per_user_viz('mattip')
#' }
deletes_per_user_viz<-function(current_user)
{
  options(repr.plot.width=16, repr.plot.height=8)
  p <- ggplot2::ggplot(deletes_per_user(current_user), ggplot2::aes(x=w, y=deletes)) +
    ggplot2::geom_line(color="green3", size=0.8) +
    ggplot2::xlab("Year")+ggplot2::ylab("Deletes") + ggplot2::theme_bw() + ggplot2::theme(axis.text=ggplot2::element_text(size=16, face="bold"),
                                                                                          axis.title=ggplot2::element_text(size=19,face="bold"))
  return(p)
}

#' commits_per_user_viz
#'
#' @description it gives the option of showing visualization/trends/time series plots of commits of the github user for the requested repository by the end user.
#' @param current_user current user
#'
#' @return dataframe based on user input
#'
#' @export
#'
#' @examples
#' \dontrun{
#' commits_per_user_viz('mattip')
#' }
commits_per_user_viz<-function(current_user)
{
  options(repr.plot.width=16, repr.plot.height=8)
  p <- ggplot2::ggplot(commits_per_user(current_user), ggplot2::aes(x=w, y=commits)) +
    ggplot2::geom_line(color="green3", size=0.8) +
    ggplot2::xlab("Year")+ggplot2::ylab("Commits") + ggplot2::theme_bw() + ggplot2::theme(axis.text=ggplot2::element_text(size=16, face="bold"),
                                                                                          axis.title=ggplot2::element_text(size=19,face="bold"))
  return(p)
}

#' everything_per_user_viz
#'
#' @description it gives the option of showing visualization/trends/time series plots of additions,deletions,commits of the github user for the requested repository by the end user.
#' @param current_user current user
#'
#' @return dataframe based on user input
#'
#' @export
#'
#' @examples
#' \dontrun{
#' everything_per_user_viz('mattip')
#' }
everything_per_user_viz<-function(current_user)
{
  options(repr.plot.width=16, repr.plot.height=8)
  pc <- ggplot2::ggplot(everything_per_user(current_user), ggplot2::aes(x=w, y=commits)) +
    ggplot2::geom_line(color="magenta3", size=0.8) +
    ggplot2::xlab("Year")+ggplot2::ylab("Commits") + ggplot2::theme_bw() + ggplot2::theme(axis.text=ggplot2::element_text(size=16, face="bold"),
                                                                                          axis.title=ggplot2::element_text(size=19,face="bold"))

  pd <- ggplot2::ggplot(deletes_per_user(current_user), ggplot2::aes(x=w, y=deletes)) +
    ggplot2::geom_line(color="royalblue3", size=0.8) +
    ggplot2::xlab("Year")+ggplot2::ylab("Deletes") + ggplot2::theme_bw() + ggplot2::theme(axis.text=ggplot2::element_text(size=16, face="bold"),
                                                                                          axis.title=ggplot2::element_text(size=19,face="bold"))

  pa <- ggplot2::ggplot(adds_per_user(current_user), ggplot2::aes(x=w, y=adds)) +
    ggplot2::geom_line(color="green3", size=0.8) +
    ggplot2::xlab("Year")+ggplot2::ylab("Adds") + ggplot2::theme_bw() + ggplot2::theme(axis.text=ggplot2::element_text(size=16, face="bold"),
                                                                                       axis.title=ggplot2::element_text(size=19,face="bold"))

  options(repr.plot.width=13, repr.plot.height=15)
  pe <- ggpubr::ggarrange(pc,pd,pa)

  return(pe)
}

#' git_stats
#'
#' @description stats of user in terms of additions, commits, deletions for the requested repository by the end user.
#' In addition to that it also gives the option of showing visualization/trends/time series plots of additions,commits,
#' deletions of the github user for the requested repository by the end user.
#' @param repo_name A repo
#'
#' @return dataframe and visualization of thr above mentioned based on user input
#'
#' @export
#'
#' @examples
#' \dontrun{
#' git_stats('numpy/numpy')
#' }
git_stats <- function(repo_name){


  base_url <- "https://api.github.com/repos/"
  params <- gsub(" ", "", paste(repo_name,"/stats/contributors"))
  url <- gsub(" ", "", paste(base_url,params))
  res = httr::GET(url)

  if (res[['status_code']] != 200) {
    stop()}
  flush.console()
  data = jsonlite::fromJSON(rawToChar(res$content))
  loginname<-'mattip'
  #loginname <- readline(prompt="Enter login name: ")
  author<-data$author

  if ((loginname %in%  author$login) != TRUE) {
    stop("This user login name doesn't exist.")}

  index_data<-which(author$login == loginname)
  data_weeks<-data$weeks
  current_user<-data_weeks[[index_data]]
  current_user$w<-anytime::anydate(current_user$w)


  while(1){
    user_stats_choice<-'1'
    #user_stats_choice <- readline(prompt="Enter which stats you are looking for the user(type from the following options - \n 1. Additions \n 2. Deletions \n 3. Commits \n 4.All \n 5. None): \n ")

    if(user_stats_choice  == "1"){
      df<-adds_per_user(current_user)
      df<-df|>dplyr::arrange(desc(adds))
      print("/n Here are the top dates with respect to adds")
      print(head(df))
      flush.console()
      #user_viz_choice<-"yes"
      user_viz_choice <- readline(prompt="\n Do you want to look at the timeseries visualization for this user? \n yes \n no: ")
      if(user_viz_choice  == "yes"){
        print(adds_per_user_viz(current_user))
        flush.console()
      }
      break;
    }

    else if(user_stats_choice == "2"){
      df<-deletes_per_user(current_user)
      df<-df|>dplyr::arrange(desc(deletes))
      print("/n Here are the top dates with respect to deletes")
      print(head(df))
      flush.console()
      user_viz_choice<-"yes"
      #user_viz_choice <- readline(prompt="\n Do you want to look at the timeseries visualization for this user? \n yes \n no: \n")
      if(user_viz_choice  == "yes"){
        print(deletes_per_user_viz(current_user))
        flush.console()
      }
      break;
    }

    else if(user_stats_choice == "3"){
      df<-commits_per_user(current_user)
      df<-df|>dplyr::arrange(desc(commits))
      print("/n Here are the top dates with respect to commits")
      print(head(df))
      flush.console()
      user_viz_choice<-"yes"
      #user_viz_choice <- readline(prompt="\n Do you want to look at the timeseries visualization for this user? \n yes \n no: \n")
      if(user_viz_choice  == "yes"){
        print(commits_per_user_viz(current_user))
        flush.console()
      }
      break;
    }
    else if(user_stats_choice == "4"){
      df<-everything_per_user(current_user)
      df<-df|>dplyr::arrange(desc(commits))
      print("/n Here are the top dates with respect to commits")
      print(head(df))
      flush.console()
      user_viz_choice<-"yes"
      #user_viz_choice <- readline(prompt="\n Do you want to look at the timeseries visualization for this user? \n yes \n no: \n")
      if(user_viz_choice  == "yes"){
        print(everything_per_user_viz(current_user))
        flush.console()
      }
      break;
    }
    else if(user_stats_choice == "5") {
      break; }
    else {
      print("\n Invalid Input \n")
    }
  }}
