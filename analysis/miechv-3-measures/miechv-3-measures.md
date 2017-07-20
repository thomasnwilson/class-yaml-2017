# Common Outcome Measures -Oklahoma MIECHV 3
Date: `r Sys.Date()`  

This report covers the planned outcomes for MIECHV 3.

Instructions:  Discuss the (a) usefulness, (b) feasibility, and (c) definitions of these proposed measures.  These ‘common’ measures will be derived from ETO and made available to providers weekly; no extra effort should be required. HV CoIIN  recommends that every site beginning to use these measures for the first time conduct a diagnostic analysis of their family engagement processes by reviewing all of these measures using 1-2 months of historical data (for example, look back at data from 3 months ago and 4 months ago).

<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load 'sourced' R files.  Suppress the output when loading sources. --> 


<!-- Load packages, or at least verify they're available on the local machine.  Suppress the output when loading packages. --> 


<!-- Load any global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->


# Summary {.tabset .tabset-fade .tabset-pills}

## Notes 

## Unanswered Questions

## Answered Questions

# List
## visits_all
% of families that received all of the expected home visits this month

* **measure** #1; **pd**: SMART Aim
* **numerator**: *N* of enrolled families that received all of the expected home visits this month
* **denominator**: *N* enrolled families not on creative outreach, alternate visit schedule or level X.  (Where 'enrolled' is defined as a completed visit in past 90 days.)

## capacity_served
% total capacity served

* **measure** #2; **pd**: 3
* **numerator**: Current caseload
* **denominator**: Expected service capacity

## capacity_filled
% of available capacity that was filled this month

* **measure** #3; **pd**: 3
* **numerator**: *N* of families newly enrolled this month
* **denominator**: Available service capacity at beginning of month

## referral_suitability
Ratio of suitable referrals to available service capacity

* **measure** #4; **pd**: 3
* **numerator**: *N* of referrals received this month
* **denominator**: available service capacity

## referral_contacted
% of families contacted, among those attempted to contact

* **measure** #5; **pd**: 3
* **numerator**: *N* of families referred this month that were contacted
* **denominator**: *N* of families referred this month that attempted to contact

## referral_appropriateness
% of referrals that were appropriate

* **measure** #6; **pd**: 3
* **numerator**: *N* of referrals this month that were appropriate
* **denominator**: *N* of families referred this month that were contacted

## contact_any
% of referred families contacted who received any contact within 48 hours

* **measure** #7a; **pd**: 3
* **numerator**: *N* of families contacted that received any contact within 48 hours
* **denominator**: *N* of families referred this month that were contacted

## contact_face
% of referred families contacted who received a face-to-face contact within 7 days

* **measure** #7b; **pd**: 3
* **numerator**: *N* of families contacted that received a first face-to-face contact within 7 days
* **denominator**: *N* of families referred this month that were contacted

## contact_lag
Average *N* of days from referral to 1st face-to-face contact

* **measure** #8; **pd**: 3
* **numerator**: *N* of families referred this month that were contacted and offered home visiting services
* **denominator**: *N* of families referred this month that were contacted

## enroll_conversion
% of families (with a completed referral) that enrolled in home visiting services

* **measure** #10; **pd**: 3
* **numerator**: *N* of families referred this month that had a completed visit within 90 days
* **denominator**: *N* of families referred this month with a completed referral

## enroll_lag
Among families enrolled, Average *N* of days between receipt of referral and enrollment

* **measure** #11; **pd**: 3
* **definition**: Since there could be different valid definitions of “referral date”, this may need to be measures #11a, #11b, #11c …
* **note**: Possibly using date when client is: (a) entered into the system, (b) assigned to program, (c) assigned to provider, ...

## visit_drought
% of families without a 21+ day drought between visits

* **measure** #12; **pd**: 4
* **numerator**: Among families for whom weekly or biweekly visits are expected, *N* without 21+ days between visits
* **denominator**: *N* of families for whom weekly or biweekly visits are expected

## visit_schedule_alternate
% of families on alternate visit schedule

* **measure** #13; **pd**: 4
* **numerator**: *N* of families designated to get a number of home visits different from the number recommended by the model's typical visit schedule - including families on alternate visit schedule, inactive, etc.
* **denominator**: *N* of enrolled families

## retention_month_03
% of families completing 3+ months

* **measure** #14a; **pd**: 5
* **numerator**: *N* of families who completed 3+ months of visits
* **denominator**: *N* of families whose 1st HV was 3 to 6 months ago

## retention_month_06
% of families completing 6+ months

* **measure** #14b; **pd**: 5
* **numerator**: *N* of families who completed 6+ months of visits
* **denominator**: *N* of families whose 1st HV was 6 to 12 months ago

## retention_month_12
% of families completing 12+ months

* **measure** #14c; **pd**: 5
* **numerator**: *N* of families whose 1st HV was 12+ months of visits
* **denominator**: *N* of families whose 1st HV was 12 to 18 months ago

## retention_month_18
% of families completing 18+ months

* **measure** #14d; **pd**: 5
* **numerator**: *N* of families whose 1st HV was 18+ months of visits
* **denominator**: *N* of families whose 1st HV was 18 to 24 months ago

## disenrolled_addressable
% of families that disenrolled from the program for 'addressable' reasons

* **measure** #17; **pd**: 5
* **numerator**: *N* of families who disenrolled for ‘addressable’ reasons
* **denominator**: *N* of families who disenrolled from the home visiting program
* **note**: Help us define “addressable” along the lines of ‘legitimate’ or ‘valid’ or ‘justified’

## inquire_development
% of families ask about child development

* **measure** #18; **pd**: ?
* **numerator**: *N* of visits that provider asked if parent has concerns about the development of child.
* **denominator**: *N* of visits w/ child 0+ days old
* **note**: ETO item needs a third option “did not ask parent” (visit touchpoint)

## visit_successful
% of visits considered 'succcessful'

* **measure** #19; **pd**: 5
* **note**: ?How should this be defined?

# Tables

## Planned Measures
<?xml version="1.0" encoding="UTF-8"?>
<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; text-align: right;">
 <thead>
  <tr>
   <th style="text-align:left;"> id </th>
   <th style="text-align:left;"> title<br/>(driver) </th>
   <th style="text-align:left;"> description </th>
   <th style="text-align:left;"> equation </th>
   <th style="text-align:left;"> note </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> visits<br/>all<br/>(SMART Aim) </td>
   <td style="text-align:left;"> % of families that received all of the expected home visits this month </td>
   <td style="text-align:left;"> **numerator**: *N* of enrolled families that received all of the expected home visits this month<br/>**denominator**: *N* enrolled families not on creative outreach, alternate visit schedule or level X.  (Where 'enrolled' is defined as a completed visit in past 90 days.) </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> capacity<br/>served<br/>(3) </td>
   <td style="text-align:left;"> % total capacity served </td>
   <td style="text-align:left;"> **numerator**: Current caseload<br/>**denominator**: Expected service capacity </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> capacity<br/>filled<br/>(3) </td>
   <td style="text-align:left;"> % of available capacity that was filled this month </td>
   <td style="text-align:left;"> **numerator**: *N* of families newly enrolled this month<br/>**denominator**: Available service capacity at beginning of month </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> referral<br/>suitability<br/>(3) </td>
   <td style="text-align:left;"> Ratio of suitable referrals to available service capacity </td>
   <td style="text-align:left;"> **numerator**: *N* of referrals received this month<br/>**denominator**: available service capacity </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> referral<br/>contacted<br/>(3) </td>
   <td style="text-align:left;"> % of families contacted, among those attempted to contact </td>
   <td style="text-align:left;"> **numerator**: *N* of families referred this month that were contacted<br/>**denominator**: *N* of families referred this month that attempted to contact </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> referral<br/>appropri-<br/>ateness<br/>(3) </td>
   <td style="text-align:left;"> % of referrals that were appropriate </td>
   <td style="text-align:left;"> **numerator**: *N* of referrals this month that were appropriate<br/>**denominator**: *N* of families referred this month that were contacted </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 7a </td>
   <td style="text-align:left;"> contact<br/>any<br/>(3) </td>
   <td style="text-align:left;"> % of referred families contacted who received any contact within 48 hours </td>
   <td style="text-align:left;"> **numerator**: *N* of families contacted that received any contact within 48 hours<br/>**denominator**: *N* of families referred this month that were contacted </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 7b </td>
   <td style="text-align:left;"> contact<br/>face<br/>(3) </td>
   <td style="text-align:left;"> % of referred families contacted who received a face-to-face contact within 7 days </td>
   <td style="text-align:left;"> **numerator**: *N* of families contacted that received a first face-to-face contact within 7 days<br/>**denominator**: *N* of families referred this month that were contacted </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> contact<br/>lag<br/>(3) </td>
   <td style="text-align:left;"> Average *N* of days from referral to 1st face-to-face contact </td>
   <td style="text-align:left;"> **numerator**: *N* of families referred this month that were contacted and offered home visiting services<br/>**denominator**: *N* of families referred this month that were contacted </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> enroll<br/>conversion<br/>(3) </td>
   <td style="text-align:left;"> % of families (with a completed referral) that enrolled in home visiting services </td>
   <td style="text-align:left;"> **numerator**: *N* of families referred this month that had a completed visit within 90 days<br/>**denominator**: *N* of families referred this month with a completed referral </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> enroll<br/>lag<br/>(3) </td>
   <td style="text-align:left;"> Among families enrolled, Average *N* of days between receipt of referral and enrollment </td>
   <td style="text-align:left;"> Since there could be different valid definitions of “referral date”, this may need to be measures #11a, #11b, #11c … </td>
   <td style="text-align:left;"> Possibly using date when client is: (a) entered into the system, (b) assigned to program, (c) assigned to provider, ... </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> visit<br/>drought<br/>(4) </td>
   <td style="text-align:left;"> % of families without a 21+ day drought between visits </td>
   <td style="text-align:left;"> **numerator**: Among families for whom weekly or biweekly visits are expected, *N* without 21+ days between visits<br/>**denominator**: *N* of families for whom weekly or biweekly visits are expected </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 13 </td>
   <td style="text-align:left;"> visit<br/>schedule<br/>alternate<br/>(4) </td>
   <td style="text-align:left;"> % of families on alternate visit schedule </td>
   <td style="text-align:left;"> **numerator**: *N* of families designated to get a number of home visits different from the number recommended by the model's typical visit schedule - including families on alternate visit schedule, inactive, etc.<br/>**denominator**: *N* of enrolled families </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 14a </td>
   <td style="text-align:left;"> retention<br/>month<br/>03<br/>(5) </td>
   <td style="text-align:left;"> % of families completing 3+ months </td>
   <td style="text-align:left;"> **numerator**: *N* of families who completed 3+ months of visits<br/>**denominator**: *N* of families whose 1st HV was 3 to 6 months ago </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 14b </td>
   <td style="text-align:left;"> retention<br/>month<br/>06<br/>(5) </td>
   <td style="text-align:left;"> % of families completing 6+ months </td>
   <td style="text-align:left;"> **numerator**: *N* of families who completed 6+ months of visits<br/>**denominator**: *N* of families whose 1st HV was 6 to 12 months ago </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 14c </td>
   <td style="text-align:left;"> retention<br/>month<br/>12<br/>(5) </td>
   <td style="text-align:left;"> % of families completing 12+ months </td>
   <td style="text-align:left;"> **numerator**: *N* of families whose 1st HV was 12+ months of visits<br/>**denominator**: *N* of families whose 1st HV was 12 to 18 months ago </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 14d </td>
   <td style="text-align:left;"> retention<br/>month<br/>18<br/>(5) </td>
   <td style="text-align:left;"> % of families completing 18+ months </td>
   <td style="text-align:left;"> **numerator**: *N* of families whose 1st HV was 18+ months of visits<br/>**denominator**: *N* of families whose 1st HV was 18 to 24 months ago </td>
   <td style="text-align:left;"> -- </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 17 </td>
   <td style="text-align:left;"> disenrolled<br/>addressable<br/>(5) </td>
   <td style="text-align:left;"> % of families that disenrolled from the program for 'addressable' reasons </td>
   <td style="text-align:left;"> **numerator**: *N* of families who disenrolled for ‘addressable’ reasons<br/>**denominator**: *N* of families who disenrolled from the home visiting program </td>
   <td style="text-align:left;"> Help us define “addressable” along the lines of ‘legitimate’ or ‘valid’ or ‘justified’ </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 18 </td>
   <td style="text-align:left;"> inquire<br/>development<br/>(?) </td>
   <td style="text-align:left;"> % of families ask about child development </td>
   <td style="text-align:left;"> **numerator**: *N* of visits that provider asked if parent has concerns about the development of child.<br/>**denominator**: *N* of visits w/ child 0+ days old </td>
   <td style="text-align:left;"> ETO item needs a third option “did not ask parent” (visit touchpoint) </td>
  </tr>
</tbody>
</table>

## Proposed Measures
<?xml version="1.0" encoding="UTF-8"?>
<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; text-align: right;">
 <thead>
  <tr>
   <th style="text-align:left;"> id </th>
   <th style="text-align:left;"> title<br/>(driver) </th>
   <th style="text-align:left;"> description </th>
   <th style="text-align:left;"> equation </th>
   <th style="text-align:left;"> note </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 19 </td>
   <td style="text-align:left;"> visit<br/>successful<br/>(5) </td>
   <td style="text-align:left;"> % of visits considered 'succcessful' </td>
   <td style="text-align:left;"> -- </td>
   <td style="text-align:left;"> ?How should this be defined? </td>
  </tr>
</tbody>
</table>

#Trees

## Dynamic Tree
<!--html_preserve--><div id="htmlwidget-26b0d9611221c305f349" style="width:1152px;height:576px;" class="collapsibleTree html-widget"></div>
<script type="application/json" data-for="htmlwidget-26b0d9611221c305f349">{"x":{"data":{"name":".","children":[{"name":"?","children":[{"name":"#18: inquire_development","children":[{"name":"**numerator**: N of visits that provider asked if parent has concerns about the development of child."},{"name":"**denominator**: N of visits w/ child 0+ days old"}]}]},{"name":"3","children":[{"name":"#2: capacity_served","children":[{"name":"**numerator**: Current caseload"},{"name":"**denominator**: Expected service capacity"}]},{"name":"#3: capacity_filled","children":[{"name":"**numerator**: N of families newly enrolled this month"},{"name":"**denominator**: Available service capacity at beginning of month"}]},{"name":"#4: referral_suitability","children":[{"name":"**numerator**: N of referrals received this month"},{"name":"**denominator**: available service capacity"}]},{"name":"#5: referral_contacted","children":[{"name":"**numerator**: N of families referred this month that were contacted"},{"name":"**denominator**: N of families referred this month that attempted to contact"}]},{"name":"#6: referral_appropriateness","children":[{"name":"**numerator**: N of referrals this month that were appropriate"},{"name":"**denominator**: N of families referred this month that were contacted"}]},{"name":"#7a: contact_any","children":[{"name":"**numerator**: N of families contacted that received any contact within 48 hours"},{"name":"**denominator**: N of families referred this month that were contacted"}]},{"name":"#7b: contact_face","children":[{"name":"**numerator**: N of families contacted that received a first face-to-face contact within 7 days"},{"name":"**denominator**: N of families referred this month that were contacted"}]},{"name":"#8: contact_lag","children":[{"name":"**numerator**: N of families referred this month that were contacted and offered home visiting services"},{"name":"**denominator**: N of families referred this month that were contacted"}]},{"name":"#10: enroll_conversion","children":[{"name":"**numerator**: N of families referred this month that had a completed visit within 90 days"},{"name":"**denominator**: N of families referred this month with a completed referral"}]},{"name":"#11: enroll_lag","children":[{"name":"**definition**: Since there could be different valid definitions of “referral date”, this may need to be measures #11a, #11b, #11c …"}]}]},{"name":"4","children":[{"name":"#12: visit_drought","children":[{"name":"**numerator**: Among families for whom weekly or biweekly visits are expected, N without 21+ days between visits"},{"name":"**denominator**: N of families for whom weekly or biweekly visits are expected"}]},{"name":"#13: visit_schedule_alternate","children":[{"name":"**numerator**: N of families designated to get a number of home visits different from the number recommended by the model's typical visit schedule - including families on alternate visit schedule, inactive, etc."},{"name":"**denominator**: N of enrolled families"}]}]},{"name":"5","children":[{"name":"#14a: retention_month_03","children":[{"name":"**numerator**: N of families who completed 3+ months of visits"},{"name":"**denominator**: N of families whose 1st HV was 3 to 6 months ago"}]},{"name":"#14b: retention_month_06","children":[{"name":"**numerator**: N of families who completed 6+ months of visits"},{"name":"**denominator**: N of families whose 1st HV was 6 to 12 months ago"}]},{"name":"#14c: retention_month_12","children":[{"name":"**numerator**: N of families whose 1st HV was 12+ months of visits"},{"name":"**denominator**: N of families whose 1st HV was 12 to 18 months ago"}]},{"name":"#14d: retention_month_18","children":[{"name":"**numerator**: N of families whose 1st HV was 18+ months of visits"},{"name":"**denominator**: N of families whose 1st HV was 18 to 24 months ago"}]},{"name":"#17: disenrolled_addressable","children":[{"name":"**numerator**: N of families who disenrolled for ‘addressable’ reasons"},{"name":"**denominator**: N of families who disenrolled from the home visiting program"}]}]},{"name":"SMART Aim","children":[{"name":"#1: visits_all","children":[{"name":"**numerator**: N of enrolled families that received all of the expected home visits this month"},{"name":"**denominator**: N enrolled families not on creative outreach, alternate visit schedule or level X.  (Where 'enrolled' is defined as a completed visit in past 90 days.)"}]}]}]},"options":{"hierarchy":["driver_primary","title","key_value"],"input":null,"attribute":"leafCount","linkLength":100,"fontSize":10,"tooltip":false,"margin":{"top":20,"bottom":20,"left":30,"right":1080},"fill":"lightsteelblue"}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

<!-- ## Static Tree -->
<!-- ```{r tree-static, echo=echo_chunks, message=message_chunks} -->
<!-- ``` -->


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
 date     2017-07-20                  
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
 bindrcpp        * 0.2        2017-06-17 CRAN (R 3.4.0)                       
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
 glue            * 1.1.1      2017-06-21 CRAN (R 3.4.0)                       
 graphics        * 3.4.1      2017-07-08 local                                
 grDevices       * 3.4.1      2017-07-08 local                                
 grid              3.4.1      2017-07-08 local                                
 gridExtra         2.2.1      2016-02-29 CRAN (R 3.4.1)                       
 gtable            0.2.0      2016-02-26 CRAN (R 3.4.1)                       
 highr             0.6        2016-05-09 CRAN (R 3.4.1)                       
 hms               0.3        2016-11-22 CRAN (R 3.4.1)                       
 htmltools         0.3.6      2017-04-28 CRAN (R 3.4.0)                       
 htmlwidgets       0.9        2017-07-11 Github (ramnathv/htmlwidgets@6f4101d)
 httr              1.2.1      2016-07-03 CRAN (R 3.4.1)                       
 igraph            1.0.1      2015-06-26 CRAN (R 3.4.1)                       
 influenceR        0.1.0      2015-09-03 CRAN (R 3.4.0)                       
 jsonlite          1.5        2017-06-01 CRAN (R 3.4.0)                       
 kableExtra        0.3.0      2017-07-04 CRAN (R 3.4.1)                       
 knitr           * 1.16       2017-05-18 CRAN (R 3.4.0)                       
 lazyeval          0.2.0      2016-06-12 CRAN (R 3.4.1)                       
 magrittr        * 1.5        2014-11-22 CRAN (R 3.4.1)                       
 memoise           1.1.0      2017-04-21 CRAN (R 3.4.0)                       
 methods         * 3.4.1      2017-07-08 local                                
 munsell           0.4.3      2016-02-13 CRAN (R 3.4.1)                       
 OuhscMunge        0.1.8.9002 2017-07-02 local                                
 pkgconfig         2.0.1      2017-03-21 CRAN (R 3.4.1)                       
 plyr              1.8.4      2016-06-08 CRAN (R 3.4.1)                       
 purrr             0.2.2.2    2017-05-11 CRAN (R 3.4.0)                       
 R6                2.2.2      2017-06-17 CRAN (R 3.4.0)                       
 RColorBrewer      1.1-2      2014-12-07 CRAN (R 3.4.1)                       
 Rcpp              0.12.11    2017-05-22 CRAN (R 3.4.0)                       
 readr             1.1.1      2017-05-16 CRAN (R 3.4.0)                       
 rgexf             0.15.3     2015-03-24 CRAN (R 3.4.0)                       
 rlang             0.1.1.9000 2017-07-02 Github (hadley/rlang@ff87439)        
 rmarkdown         1.6        2017-06-15 CRAN (R 3.4.0)                       
 Rook              1.1-1      2014-10-20 CRAN (R 3.4.0)                       
 rprojroot         1.2        2017-01-16 CRAN (R 3.4.1)                       
 rstudioapi        0.6        2016-06-27 CRAN (R 3.4.1)                       
 rvest             0.3.2      2016-06-17 CRAN (R 3.4.1)                       
 scales            0.4.1.9002 2017-07-11 Github (hadley/scales@6db7b6f)       
 stats           * 3.4.1      2017-07-08 local                                
 stringi           1.1.5      2017-04-07 CRAN (R 3.4.1)                       
 stringr           1.2.0      2017-02-18 CRAN (R 3.4.1)                       
 tibble            1.3.3      2017-06-01 Github (tidyverse/tibble@b2275d5)    
 tidyr             0.6.3      2017-05-15 CRAN (R 3.4.0)                       
 tools             3.4.1      2017-07-08 local                                
 utils           * 3.4.1      2017-07-08 local                                
 viridis           0.4.0      2017-03-27 CRAN (R 3.4.1)                       
 viridisLite       0.2.0      2017-03-24 CRAN (R 3.4.1)                       
 visNetwork        2.0.0      2017-06-26 CRAN (R 3.4.0)                       
 withr             1.0.2      2016-06-20 CRAN (R 3.4.1)                       
 XML               3.98-1.9   2017-06-19 CRAN (R 3.4.0)                       
 xml2              1.1.1      2017-01-24 CRAN (R 3.4.1)                       
 yaml              2.1.14     2016-11-12 CRAN (R 3.4.1)                       
```
</details>



Report rendered by wibeasley at 2017-07-20, 12:26 -0500 in 3 seconds.

