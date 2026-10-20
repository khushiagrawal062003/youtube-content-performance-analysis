/*
=====================================================================
YouTube Content Performance & Engagement Analysis
SQL Analysis Script
=====================================================================

Purpose:
    1. Create the MySQL database and table
    2. Load the cleaned YouTube dataset
    3. Validate the imported records
    4. Perform 20 analytical SQL queries

Database: youtube_project
Table:    youtube_videos
Dataset:  youtube_cleaned_sql.csv

IMPORTANT:
    Replace the LOAD DATA INFILE path with the location of
    youtube_cleaned_sql.csv on your own computer.

    Do not commit API keys, passwords, or other credentials.
=====================================================================
*/

CREATE DATABASE IF NOT EXISTS youtube_project;
USE youtube_project;


/* =====================================================
   TABLE CREATION
   ===================================================== */

CREATE TABLE IF NOT EXISTS youtube_videos (
    id VARCHAR(50),
    published_at DATETIME,
    channel_title VARCHAR(100),
    title TEXT,
    description TEXT,
    tags TEXT,
    category_id INT,
    default_language VARCHAR(20),
    duration VARCHAR(30),
    definition VARCHAR(20),
    duration_minutes DECIMAL(10,2),
    view_count BIGINT,
    like_count BIGINT,
    comment_count BIGINT,
    like_rate DECIMAL(10,4),
    comment_rate DECIMAL(10,4),
    engagement_rate DECIMAL(10,4),
    published_year INT,
    published_month INT,
    published_month_name VARCHAR(20),
    published_day INT,
    published_day_name VARCHAR(20),
    published_date DATE,
    duration_category VARCHAR(20)
);


/* =====================================================
   LOAD CLEANED CSV
   =====================================================

   Replace this example path:
       C:/path/to/youtube_cleaned_sql.csv

   with your actual local path.

   Depending on your MySQL configuration, LOAD DATA INFILE
   may require the file to be inside MySQL's permitted import
   directory and may require FILE privilege/configuration.
   ===================================================== */

TRUNCATE TABLE youtube_videos;

LOAD DATA INFILE
'C:/path/to/youtube_cleaned_sql.csv'
INTO TABLE youtube_videos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


/* =====================================================
   DATA VALIDATION
   ===================================================== */

SELECT COUNT(*) AS total_records
FROM youtube_videos;


/* =====================================================
   YOUTUBE CONTENT INTELLIGENCE - SQL ANALYSIS
   ===================================================== */


/* Q1: How many total videos are present? */

SELECT COUNT(*) AS TotalVideos
FROM youtube_videos;


/* Q2: Find the top 10 videos with the highest number of views. */

SELECT
    title,
    view_count
FROM youtube_videos
ORDER BY view_count DESC
LIMIT 10;


/* Q3: Find the 10 videos with the highest engagement rate. */

SELECT
    title,
    engagement_rate
FROM youtube_videos
ORDER BY engagement_rate DESC
LIMIT 10;


/* Q4: Find the average number of views across all videos. */

SELECT
    AVG(view_count) AS AvgViews
FROM youtube_videos;


/* Q5: Find the total number of views across all videos. */

SELECT
    SUM(view_count) AS TotalViews
FROM youtube_videos;


/* Q6: Find the average engagement rate of all videos. */

SELECT
    AVG(engagement_rate) AS AvgEngagementRate
FROM youtube_videos;


/* Q7: Find the total number of videos published in each year. */

SELECT
    published_year,
    COUNT(*) AS TotalVideos
FROM youtube_videos
GROUP BY published_year
ORDER BY published_year;


/* Q8: Find the average views for each published year. */

SELECT
    published_year,
    AVG(view_count) AS AvgViews
FROM youtube_videos
GROUP BY published_year
ORDER BY published_year;


/* Q9: Find the top 5 years with the highest average views. */

SELECT
    published_year,
    AVG(view_count) AS AvgViews
FROM youtube_videos
GROUP BY published_year
ORDER BY AvgViews DESC
LIMIT 5;


/* Q10: Find the number of videos in each duration category. */

SELECT
    duration_category,
    COUNT(*) AS NoOfVideos
FROM youtube_videos
GROUP BY duration_category;


/* Q11: Find the average views for each duration category. */

SELECT
    duration_category,
    AVG(view_count) AS AvgViews
FROM youtube_videos
GROUP BY duration_category;


/* Q12: Find the average engagement rate for each duration category. */

SELECT
    duration_category,
    AVG(engagement_rate) AS AvgEngagementRate
FROM youtube_videos
GROUP BY duration_category;


/* Q13: Find the number of videos published in each month. */

SELECT
    published_month_name,
    COUNT(*) AS TotalVideos
FROM youtube_videos
GROUP BY published_month, published_month_name
ORDER BY published_month;


/* Q14: Find the average views for each month. */

SELECT
    published_month_name,
    AVG(view_count) AS AvgViews
FROM youtube_videos
GROUP BY published_month, published_month_name
ORDER BY published_month;


/* Q15: Find the average engagement rate for each month. */

SELECT
    published_month_name,
    AVG(engagement_rate) AS AvgEngagementRate
FROM youtube_videos
GROUP BY published_month, published_month_name
ORDER BY published_month;


/* Q16: Find the number of videos in each YouTube category. */

SELECT
    category_id,
    COUNT(*) AS TotalVideos
FROM youtube_videos
GROUP BY category_id
ORDER BY TotalVideos DESC;


/* Q17: Find the average views for each YouTube category. */

SELECT
    category_id,
    AVG(view_count) AS AvgViews
FROM youtube_videos
GROUP BY category_id
ORDER BY AvgViews DESC;


/* Q18: Find the average engagement rate for each YouTube category. */

SELECT
    category_id,
    AVG(engagement_rate) AS AvgEngagementRate
FROM youtube_videos
GROUP BY category_id
ORDER BY AvgEngagementRate DESC;


/* Q19: Find the top 10 most liked videos. */

SELECT
    title,
    like_count
FROM youtube_videos
ORDER BY like_count DESC
LIMIT 10;


/* Q20: Find the top 10 most commented videos. */

SELECT
    title,
    comment_count
FROM youtube_videos
ORDER BY comment_count DESC
LIMIT 10;


/* =====================================================
   END OF ANALYSIS
   ===================================================== */
