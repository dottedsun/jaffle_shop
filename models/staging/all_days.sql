/*
This macro returns the sql required to build a date spine. The spine will include the start_date (if it is aligned to the datepart), but it will not include the end_date.
*/

{{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast('2019-01-01' as date)",
    end_date="DATEADD(WEEK, 1, CURRENT_DATE)"
   )
}}