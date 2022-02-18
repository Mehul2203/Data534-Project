# GitHub Stats
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

**Team Member 1 - Navdeep Singh Saini**

   * **13th Feb** - Reasearched on the API on which the R wrapper package can be created in R and came to the conclusion that Github API should be taken into consideration
   
   * **14th Feb** - Started working on the wrapper functions for fetching the data from API for deletion and converting into the dataframe through data wrangling in R, also worked on wrapper function for creating visualizations
   
   * **15th Feb** - Worked on the common main function for user inputs and wrapping all the other functions into it, also worked on the docstring documentation of those functions
   
   * **16th Feb** - Worked on the Git Documentation of the R wrapper package
   * **17th Feb** - Worked on package testing using Circle CI and later on Github Action, after many failures we were able to run it successfully involving many changes in the configuration and even code changes.

**Team Member 2 - Mehul Bhargava**
    
   * **13th Feb** - Worked to search for a good API, accessing it, analyzed itand finalizing it. Tried analyzing some other APIs given on the project documentation. Selected which particular API for GitHub to be selected. 
   
   * **14th Feb** - Coding for analysis of data. Extracting the data from the API in a proper format and converted into dataframes. helped creating the functions for the user requirements for commits and a combined functions. Created functions for visualizattions for commits for each user and for a combined visualization. Did faceting for the combined visualization. 
   
   * **15th Feb** - Did Error and Exception handling for the sub-function in the main function. Did some debuugging and helped in creating main function.  
   
   * **16th Feb** - Worked on GitHub documentation and package creation. 
   * **17th Feb** - Helped and worked on testing our package using GitHub actions. Many errors and warnings were occuring. Helped in debugging and finally it worked. We all worked on Mayukha's system collaboratively.  
   * **18th Feb** - Worked on Vignettes file and did some more modifications. 


**Team Member 3 - Mayukha Bheemavarapu**

   * **13th Feb** - Started searching for possible options of API ad have shortlisted the GitHub API. Brainstormed on how to execute the project
   
   * **14th Feb** - Extracted the data from API and created functions for adds,deletes and commits per user along with visualisations. Ran the entire script on a test repo
   
   * **15th Feb** - Made the script dynamic and it can incorporate any repo. Performed exception handling and documented parts of the code
   
   * **16th Feb** - Created an R package encapsulating the scripts from above. Added the contributing, code of conduct and user_guide files


![image](https://user-images.githubusercontent.com/87165579/154630161-f077e7e5-c1fe-4450-a015-6fc8b2db5e33.png)

 
