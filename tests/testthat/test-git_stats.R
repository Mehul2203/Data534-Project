#test_that("multiplication works", {
#  expect_equal(2 * 2, 4)
#})

base_url <- "https://api.github.com/repos/"
repo_name<-'numpy/numpy'
params <- gsub(" ", "", paste(repo_name,"/stats/contributors"))
url <- gsub(" ", "", paste(base_url,params))
res = httr::GET(url)
if (res[['status_code']] != 200) {
  stop()}
flush.console()
data = jsonlite::fromJSON(rawToChar(res$content))
loginname<-'mattip'
author<-data$author
if ((loginname %in%  author$login) != TRUE) {
  stop("This user login name doesn't exist.")}
index_data<-which(author$login == loginname)
data_weeks<-data$weeks
current_user<-data_weeks[[index_data]]
current_user$w<-anytime::anydate(current_user$w)
test_that('data types correct', {
  expect_is(adds_per_user(current_user),'data.frame')
})
test_that('data types correct', {
  expect_is(deletes_per_user(current_user),'data.frame')
})
test_that('data types correct', {
  expect_is(commits_per_user(current_user),'data.frame')
})
test_that('data types correct', {
  expect_is(everything_per_user(current_user),'data.frame')
})
test_that('data types correct', {
  expect_is(adds_per_user_viz(current_user),'gg')
})
test_that('data types correct', {
  expect_is(deletes_per_user_viz(current_user),'gg')
})
test_that('data types correct', {
  expect_is(commits_per_user_viz(current_user),'gg')
})
test_that('data types correct', {
expect_is(everything_per_user_viz(current_user),'gg')
})
