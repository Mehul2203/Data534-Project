# Github Stats
This is the git hub repo for our project based on Github API R wrapper package including functions for fetching the statistics of contributors/user of various repositories and also plotting the visualizations and time series plots.

## Team Members

**Navdeep Singh Saini**

**Mehul Bhargava**

**Mayukha Bheemavarapu**

## Components

**Libraries Used**

   * httr
   * jsonlite
   * tidyverse
   * patchwork
   * anytime
   * testthat

**Functions Used**

   * **git_stats** - This is the main function which returns the stats of user in terms of additions, commits, deletions for the requested repository by the end user. In addition to that it also gives the option of showing visualization/trends/time series plots of additions,commits, deletions of the github user for the requested repository by the end user.

      Parameter: repo_name -> it is the repository name for which the user wants to analyze the data.

   * **adds_per_user** - It is the function which returns the stats of user in terms of additions for the requested repository by the end user. 
 
      Parameter: current_user -> the user name for which user wants to analyze the data.
 
   * **deletes_per_user** - It is the function which returns the stats of user in terms of deletions for the requested repository by the end user. 

      Parameter: current_user -> the user name for which user wants to analyze the data
      
   * **commits_per_user** - It is the function which returns the stats of user in terms of commits for the requested repository by the end user. 

      Parameter: current_user -> the user name for which user wants to analyze the data
      
   * **everything_per_user** - It is the function which returns the stats of user in terms of additions,deletions,commits for the requested repository by the end user. 

      Parameter: current_user -> the user name for which user wants to analyze the data
      
   * **adds_per_user_viz** - This shows visualization/trends/time series plots of additions of the github user for the requested repository by the end user.

      Parameter: current_user -> the user name for which user wants to analyze the data
      
   * **deletes_per_user_viz** - This shows visualization/trends/time series plots of deletions of the github user for the requested repository by the end user.

      Parameter: current_user -> the user name for which user wants to analyze the data
      
   * **commits_per_user_viz** - This shows visualization/trends/time series plots of commits of the github user for the requested repository by the end user.

      Parameter: current_user -> the user name for which user wants to analyze the data
      
   * **eveyrthing_per_user_viz** - This shows visualization/trends/time series plots of additions,deletions,commits of the github user for the requested repository by the end user.

      Parameter: current_user -> the user name for which user wants to analyze the data
      

## Tasks Done

**Navdeep Singh Saini**

   * **13th Feb** - Reasearched on the API on which the R wrapper package can be created in R and came to the conclusion that Github API should be taken into consideration
   
   * **14th Feb** - Started working on the wrapper functions for fetching the data from API for deletion and converting into the dataframe through data wrangling in R, also worked on wrapper function for creating visualizations
   
   * **15th Feb** - Worked on the common main function for user inputs and wrapping all the other functions into it, also worked on the docstring documentation of those functions
   
   * **16th Feb** - Worked on the Git Documentation of the R wrapper package

**Mehul Bhargava**
    
   * **13th Feb** - 
   
   * **14th Feb** - 
   
   * **15th Feb** - 
   
   * **16th Feb** -


**Mayukha Bheemavarapu**

   * **13th Feb** - 
   
   * **14th Feb** - 
   
   * **15th Feb** - 
   
   * **16th Feb** -
