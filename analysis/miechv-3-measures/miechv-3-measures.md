# MIECHV 3 Measures
Date: `r Sys.Date()`  

This report covers the planned outcomes for MIECHV 3

<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load 'sourced' R files.  Suppress the output when loading sources. --> 


<!-- Load packages, or at least verify they're available on the local machine.  Suppress the output when loading packages. --> 

```
Warning: replacing previous import 'scales::viridis_pal' by 'viridis::viridis_pal' when loading
'DiagrammeR'
```

<!-- Load any global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->


# Summary {.tabset .tabset-fade .tabset-pills}

## Notes 

## Unanswered Questions

## Answered Questions

# Display

## Static Table

level 1   level 2    measure id  description                                                              driver primary   numerator                                                                         denominator                                                                       
--------  --------  -----------  -----------------------------------------------------------------------  ---------------  --------------------------------------------------------------------------------  ----------------------------------------------------------------------------------
Root      1                   1  % of families that received all of the expected home visits this month   SMART Aim        N of enrolled families that received all of the expected home visits this month   N enrolled families not on creative outreach, alternate visit schedule or level X 
Root      2                   2  % total capacity served                                                  3                Current caseload                                                                  Expected service capacity                                                         

## Static Tree

```
  levelName
1     Root 
2      ¦--1
3      °--2
```

```
  levelName measure_id                                                            description
1     Root          NA                                                                       
2      ¦--1          1 % of families that received all of the expected home visits this month
3      °--2          2                                                % total capacity served
  driver_primary                                                                       numerator
1                                                                                               
2      SMART Aim N of enrolled families that received all of the expected home visits this month
3              3                                                                Current caseload
                                                                        denominator
1                                                                                  
2 N enrolled families not on creative outreach, alternate visit schedule or level X
3                                                         Expected service capacity
```

## Dynamic Tree



# Session Information
For the sake of documentation and reproducibility, the current report was rendered in the following environment.  Click the line below to expand.

<details>
  <summary>Environment <span class="glyphicon glyphicon-plus-sign"></span></summary>

```
Session info --------------------------------------------------------------------------------------
```

```
 setting  value                       
 version  R version 3.4.1 (2017-06-30)
 system   x86_64, linux-gnu           
 ui       X11                         
 language en_US                       
 collate  en_US.UTF-8                 
 tz       America/Chicago             
 date     2017-07-14                  
```

```
Packages ------------------------------------------------------------------------------------------
```

```
 package         * version    date       source                               
 assertthat        0.2.0      2017-04-11 CRAN (R 3.4.0)                       
 backports         1.1.0      2017-05-22 CRAN (R 3.4.0)                       
 base            * 3.4.1      2017-07-08 local                                
 bindr             0.1        2016-11-13 CRAN (R 3.4.1)                       
 bindrcpp          0.2        2017-06-17 CRAN (R 3.4.0)                       
 brew              1.0-6      2011-04-13 CRAN (R 3.4.1)                       
 checkmate         1.8.3      2017-07-03 Github (mllg/checkmate@43241ee)      
 collapsibleTree   0.1.4      2017-03-22 CRAN (R 3.4.0)                       
 colorspace        1.3-2      2016-12-14 CRAN (R 3.4.1)                       
 compiler          3.4.1      2017-07-08 local                                
 data.tree         0.7.0      2017-01-06 CRAN (R 3.4.0)                       
 datasets        * 3.4.1      2017-07-08 local                                
 devtools          1.13.2     2017-06-02 CRAN (R 3.4.0)                       
 DiagrammeR        0.9.0      2017-01-04 CRAN (R 3.4.0)                       
 digest            0.6.12     2017-01-27 CRAN (R 3.4.1)                       
 dplyr             0.7.1      2017-06-22 CRAN (R 3.4.0)                       
 evaluate          0.10.1     2017-06-24 CRAN (R 3.4.0)                       
 ggplot2           2.2.1.9000 2017-07-11 Github (hadley/ggplot2@4255cd8)      
 glue              1.1.1      2017-06-21 CRAN (R 3.4.0)                       
 graphics        * 3.4.1      2017-07-08 local                                
 grDevices       * 3.4.1      2017-07-08 local                                
 grid              3.4.1      2017-07-08 local                                
 gridExtra         2.2.1      2016-02-29 CRAN (R 3.4.1)                       
 gtable            0.2.0      2016-02-26 CRAN (R 3.4.1)                       
 highr             0.6        2016-05-09 CRAN (R 3.4.1)                       
 htmltools         0.3.6      2017-04-28 CRAN (R 3.4.0)                       
 htmlwidgets       0.9        2017-07-11 Github (ramnathv/htmlwidgets@6f4101d)
 igraph            1.0.1      2015-06-26 CRAN (R 3.4.1)                       
 influenceR        0.1.0      2015-09-03 CRAN (R 3.4.0)                       
 jsonlite          1.5        2017-06-01 CRAN (R 3.4.0)                       
 knitr           * 1.16       2017-05-18 CRAN (R 3.4.0)                       
 lazyeval          0.2.0      2016-06-12 CRAN (R 3.4.1)                       
 magrittr        * 1.5        2014-11-22 CRAN (R 3.4.1)                       
 memoise           1.1.0      2017-04-21 CRAN (R 3.4.0)                       
 methods         * 3.4.1      2017-07-08 local                                
 munsell           0.4.3      2016-02-13 CRAN (R 3.4.1)                       
 OuhscMunge        0.1.8.9002 2017-07-02 local                                
 pkgconfig         2.0.1      2017-03-21 CRAN (R 3.4.1)                       
 plyr              1.8.4      2016-06-08 CRAN (R 3.4.1)                       
 R6                2.2.2      2017-06-17 CRAN (R 3.4.0)                       
 RColorBrewer      1.1-2      2014-12-07 CRAN (R 3.4.1)                       
 Rcpp              0.12.11    2017-05-22 CRAN (R 3.4.0)                       
 rgexf             0.15.3     2015-03-24 CRAN (R 3.4.0)                       
 rlang             0.1.1.9000 2017-07-02 Github (hadley/rlang@ff87439)        
 rmarkdown         1.6        2017-06-15 CRAN (R 3.4.0)                       
 Rook              1.1-1      2014-10-20 CRAN (R 3.4.0)                       
 rprojroot         1.2        2017-01-16 CRAN (R 3.4.1)                       
 rstudioapi        0.6        2016-06-27 CRAN (R 3.4.1)                       
 scales            0.4.1.9002 2017-07-11 Github (hadley/scales@6db7b6f)       
 stats           * 3.4.1      2017-07-08 local                                
 stringi           1.1.5      2017-04-07 CRAN (R 3.4.1)                       
 stringr           1.2.0      2017-02-18 CRAN (R 3.4.1)                       
 tibble            1.3.3      2017-06-01 Github (tidyverse/tibble@b2275d5)    
 tools             3.4.1      2017-07-08 local                                
 utils           * 3.4.1      2017-07-08 local                                
 viridis           0.4.0      2017-03-27 CRAN (R 3.4.1)                       
 viridisLite       0.2.0      2017-03-24 CRAN (R 3.4.1)                       
 visNetwork        2.0.0      2017-06-26 CRAN (R 3.4.0)                       
 withr             1.0.2      2016-06-20 CRAN (R 3.4.1)                       
 XML               3.98-1.9   2017-06-19 CRAN (R 3.4.0)                       
 yaml              2.1.14     2016-11-12 CRAN (R 3.4.1)                       
```
</details>



Report rendered by wibeasley at 2017-07-14, 07:21 -0500 in 2 seconds.

