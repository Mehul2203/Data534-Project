# Github Stats
This is the git hub repo for our project based on Github API R wrapper functions for fetching the statistics of contributors/user of various repositories and also plotting the visualizations and time series plots.

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

   * git_stats - This is the main function which returns the stats of user in terms of additions, commits, deletions for the requested repository by the end user. In addition to that it also gives the option of showing visualization/trends/time series plots of additions,commits, deletions of the github user for the requested repository by the end user.

Parameter: repo_name -> it is the repository name for which the user wants to analyze the data.

   * adds_per_user - It is the function which returns the stats of user in terms of additions for the requested repository by the end user. 
 
Parameter: current_user -> the user name for which user wants to analyze the data.
 
   * deletes_per_user - It is the function which returns the stats of user in terms of deletions for the requested repository by the end user. 

Parameter: current_user -> the user name for which user wants to analyze the data
   * patchwork
   * anytime
   * testthat

**Lecture:** M-W 9:30-11:00 on Canvas Zoom link (and in person once permitted) <br>
**Lab:** Thursday 1:30 p.m. to 3:30 p.m. <br>
**Office Hours** Thursday 3:30-4:30 on Canvas Zoom link (and in person once permitted) <br>

|   Date     | Topic  | Reading |
|-----|-------|-----------|
| Extra | Association Rules  |  |
| 2022-01-10 | Performance Indices  |  |
| 2022-01-12 | Discriminant Analysis |  ISLR: Section 4.4 |
| 2022-01-17 | 'continued' (DA usually took two lectures) |  ISLR: Section 4.4 |
| 2022-01-19 | Logistic Regression  | ISLR: Section 4.3  |
| 2022-01-24 | Intro to Neural Nets | ESL: Chapter 11  |
| 2022-01-26 | Quiz |   |
| 2022-01-31 | PCA | ISLR: Section 10.2  |
| 2022-02-02 | PLS and PCReg  |    |
| 2022-02-07 | (TBD or Overflow) |  |
| 2022-02-09 | Quiz |  |

## Labs

|  Lab Date   | Lab #   | Lab Topic | 
|-----|-------------|----------|
| Extra |  | Association Rules |
| 2022-01-13 | 1 | Performance Metrics |
| 2022-01-20 | 2 | Discriminant Analysis |
| 2022-01-27 | 3 | Logistic Regression |
| 2022-02-03 | 4 | Neural Nets/PCA |
| 2022-02-10 | 5 |  PLS/PCReg |
 

## Quizzes
|Date |Time |
|-------|-------|
|2022-01-26 | In-class | 
|2022-02-09 | In-class |

## Instructor
Dr. Jeffrey L. Andrews, SCI 111, jeff.andrews@ubc.ca, 250-807-9931

## TA
Shambhavi Singh

## Marking and Evaluation
| Item | Weighting |
|------|-----------:|
| Assignments | 40% | 
| Quiz 1 | 30% | 
| Quiz 2 | 30% | 

## Learning Outcomes

After completing this course, students will be able to:

    1. select an appropriate classifier for a particular classification problem 
    2. provide reasonable estimates of classification error for models considered
    3. explain the difference between supervised and unsupervised learning


## Grievances and Complaints Procedures
A student who has a complaint related to this course should follow the procedures summarized below.
- The student should attempt to resolve the matter with the instructor first. Students may talk first to someone other than the instructor if they do not feel, for whatever reason, that they can directly approach the instructor.
- If the complaint is not resolved to the student's satisfaction, the student should go to the departmental chair John Braun at 807-8032.

## Your Responsibilities
Your responsibilities to this class and to your education as a whole include attendance and participation. You have a
responsibility to help create a classroom environment where all may learn. At the most basic level, this means you will
respect the other members of the class and the instructor and treat them with the courtesy you hope to receive in return.
Inappropriate classroom behavior may include: disruption of the classroom atmosphere, engaging in non-class activities,
talking on a cell-phone, inappropriate use of profanity in classroom discussion, use of abusive or disrespectful language toward the instructor, a student in the class, or about other individuals or groups.

## Academic Integrity
The academic enterprise is founded on honesty, civility, and integrity. As members of this enterprise, all students are
expected to know, understand, and follow the codes of conduct regarding academic integrity. At the most basic level, this
means submitting only original work done by you and acknowledging all sources of information or ideas and attributing
them to others as required. This also means you should not cheat, copy, or mislead others about what is your work.
Violations of academic integrity (i.e., misconduct) lead to the breakdown of the academic enterprise, and therefore serious
consequences arise and harsh sanctions are imposed. For example, incidences of plagiarism or cheating usually result in a
failing grade or mark of zero on the assignment or in the course. Careful records are kept to monitor and prevent recidivism.
A more detailed description of academic integrity, including the policies and procedures, may be found at
http://www.calendar.ubc.ca/okanagan/index.cfm?tree=3,54,111,959. If you have any questions about how academic
integrity applies to this course, consult with the instructor.

## Disability Assistance
If you require disability-related accommodations to meet the course objectives, please contact the Diversity Advisor of
Disability Resources located in the University Centre, Room 227. For more information about Disability Resources or
academic accommodations, please visit the website at: http://students.ok.ubc.ca/drc/welcome.html

## Equity, Human Rights, Discrimination and Harassment
UBC Okanagan is a place where every student, staff and faculty member should be able to study and work in an
environment that is free from human rights based discrimination and harassment. If you require assistance related to an
issue of equity, discrimination or harassment, please contact the Equity Office, your administrative head of unit, and/or your
unit’s equity representative. UBC Okanagan Equity Advisor: ph. 250-807-9291; email equity.ubco@ubc.ca
Web: http://equity.ok.ubc.ca

## Missing an Exam
Only students who miss the final exam for a reason that corresponds to the University of British Columbia Okanagan's
policy on excused absences from examinations will be permitted to take the final exam at a later time. A make-up exam
may have a question format different from the regular exam. If the reason for
absence is satisfactory, the student’s final exam will be worth more of the final grade. Further information on Academic
Concession can be found under Policies and Regulation in the Okanagan Academic Calendar
http://www.calendar.ubc.ca/okanagan/index.cfm?tree=3,48,0,0

## Reference Material
* James, Witten, Hastie, and Tibshirani. `An Introduction to Statistical Learning with R` (ISLR). 
* Hastie, Tibshirani, and Friedman. `Elements of Statistical Learning` (ESL).
