# 📊 YouTube Content Performance & Engagement Analysis

> An end-to-end YouTube analytics project using the **YouTube Data API, Python, MySQL, SQL, and Power BI** to analyze video performance, audience engagement, publishing trends, video duration, and category performance across **1,053 videos**.

---

## 1. 📌 Project Overview

**YouTube Content Performance & Engagement Analysis** is an end-to-end data analytics and business intelligence project focused on understanding YouTube video performance and audience engagement.

The project uses the **YouTube Data API** to collect video-level information. The collected data is processed and transformed using Python, stored as a cleaned CSV dataset, and then loaded into a **MySQL database** for structured analysis.

SQL is used to analyze video performance across multiple dimensions, including:

- Views
- Likes
- Comments
- Engagement
- Publishing year
- Publishing month
- Video duration
- YouTube category

The results are then presented through a **Power BI dashboard** to make the analysis easier to understand and explore.

### 🔄 End-to-End Pipeline

```text
YouTube Data API
       ↓
Python / Jupyter Notebook
       ↓
Data Cleaning & Preparation
       ↓
Feature Engineering
       ↓
Cleaned CSV Dataset
       ↓
MySQL Database
       ↓
SQL Analysis
       ↓
Power BI Dashboard
       ↓
Insights & Recommendations
```

---

## 2. 💼 Business Problem

YouTube channels generate a large amount of video content, making it difficult to understand content performance by looking at individual video statistics alone.

A content analyst needs to identify questions such as:

- Which videos receive the highest views?
- Which videos have the highest engagement?
- What is the average video performance?
- Which years have stronger video performance?
- Which months have higher publishing activity?
- Does video duration relate to views or engagement?
- Which categories perform better?
- Which videos receive the most likes?
- Which videos receive the most comments?

The purpose of this project is to transform raw YouTube data into structured information and meaningful insights using **Python, SQL, and Power BI**.

---

## 3. 🎯 Objectives

The main objectives of this project are:

- Collect YouTube video data using the **YouTube Data API**.
- Process and prepare the collected data using Python.
- Clean and transform the raw dataset.
- Create additional analytical features and metrics.
- Store the processed dataset in MySQL.
- Perform SQL-based analysis.
- Analyze views, likes, comments, and engagement.
- Analyze publishing trends by year and month.
- Analyze video performance by duration category.
- Analyze video performance by YouTube category.
- Identify top-performing videos.
- Build an interactive Power BI dashboard.
- Convert raw YouTube data into useful content-performance insights.

---

## 4. 📂 Dataset

### Data Source

The project uses video-level data collected through the **YouTube Data API**.

The processed dataset is stored as:

```text
youtube_cleaned_sql.csv
```

The data is loaded into the MySQL database:

```text
Database: youtube_project
Table: youtube_videos
```

The database schema contains **24 columns**.

### Dataset Columns

| Column | Description |
|---|---|
| `id` | Unique YouTube video ID |
| `published_at` | Date and time when the video was published |
| `channel_title` | YouTube channel name |
| `title` | Video title |
| `description` | Video description |
| `tags` | Video tags |
| `category_id` | YouTube category ID |
| `default_language` | Default language |
| `duration` | Original video duration |
| `definition` | Video definition |
| `duration_minutes` | Duration converted into minutes |
| `view_count` | Number of views |
| `like_count` | Number of likes |
| `comment_count` | Number of comments |
| `like_rate` | Like-based performance metric |
| `comment_rate` | Comment-based performance metric |
| `engagement_rate` | Overall engagement metric |
| `published_year` | Year of publication |
| `published_month` | Numeric month of publication |
| `published_month_name` | Name of publication month |
| `published_day` | Day of publication |
| `published_day_name` | Name of publication day |
| `published_date` | Publication date |
| `duration_category` | Video duration category |

---

## 5. 🛠️ Tools & Technologies

| Technology | Purpose |
|---|---|
| **YouTube Data API** | Collect YouTube video data |
| **Python** | Data collection, processing and transformation |
| **Jupyter Notebook** | Running the Python workflow |
| **Pandas** | Data manipulation and preprocessing |
| **CSV** | Storing cleaned data |
| **MySQL** | Database storage |
| **SQL** | Data analysis |
| **Power BI** | Dashboard and visualization |
| **GitHub** | Version control and project portfolio |

---

## 6. 🧹 Data Cleaning & Preparation

The raw YouTube API data is processed before being used for database and dashboard analysis.

### Data Preparation Workflow

```text
Raw YouTube API Data
        ↓
Data Cleaning
        ↓
Data Transformation
        ↓
Feature Engineering
        ↓
Date Feature Creation
        ↓
Duration Feature Creation
        ↓
Cleaned CSV Dataset
        ↓
MySQL Database
```

### Feature Engineering

The final dataset contains several derived fields that make the data more useful for analysis.

#### Duration in Minutes

The original video duration is represented by:

```text
duration
```

and is also converted into:

```text
duration_minutes
```

This makes it easier to compare videos based on their length.

#### Engagement Metrics

The dataset contains:

```text
like_rate
comment_rate
engagement_rate
```

These metrics allow the analysis to consider audience interaction rather than relying only on views.

#### Date Features

The publication timestamp is transformed into:

```text
published_year
published_month
published_month_name
published_day
published_day_name
published_date
```

This enables year-wise and month-wise analysis.

#### Duration Category

Videos are grouped using:

```text
duration_category
```

This allows video performance to be compared across different duration groups.

---

## 7. 🗄️ SQL Analysis

After data preparation, the cleaned CSV dataset is loaded into MySQL.

### Database

```text
Database: youtube_project
Table: youtube_videos
```

The SQL project creates the database and table and loads the cleaned CSV data.

The project contains **20 SQL analytical questions**.

### Overall Performance

1. Find the total number of videos.
2. Find the top 10 videos with the highest number of views.
3. Find the 10 videos with the highest engagement rate.
4. Find the average number of views.
5. Find the total number of views.
6. Find the average engagement rate.

### Year-wise Analysis

7. Find the total number of videos published in each year.
8. Find the average views for each published year.
9. Find the top 5 years with the highest average views.

### Duration Analysis

10. Find the number of videos in each duration category.
11. Find the average views for each duration category.
12. Find the average engagement rate for each duration category.

### Month-wise Analysis

13. Find the number of videos published in each month.
14. Find the average views for each month.
15. Find the average engagement rate for each month.

### Category Analysis

16. Find the number of videos in each YouTube category.
17. Find the average views for each YouTube category.
18. Find the average engagement rate for each YouTube category.

### Engagement Analysis

19. Find the top 10 most liked videos.
20. Find the top 10 most commented videos.

---

## 8. 📊 Power BI Dashboard

The processed YouTube dataset is used to create an interactive **Power BI dashboard**.

The dashboard is designed to provide a visual representation of YouTube content performance and engagement.

### Performance Metrics

- Total Videos
- Total Views
- Average Views
- Likes
- Comments
- Like Rate
- Comment Rate
- Engagement Rate

### Analysis Areas

#### 🎥 Video Performance

- Top videos by views
- Top videos by engagement
- Most-liked videos
- Most-commented videos

#### 📅 Publishing Trends

- Videos by year
- Average views by year
- Videos by month
- Average views by month
- Average engagement by month

#### ⏱️ Duration Analysis

- Videos by duration category
- Average views by duration category
- Average engagement by duration category

#### 📚 Category Analysis

- Number of videos by category
- Average views by category
- Average engagement by category

The Power BI project file is:

```text
youtube_intelligenceProject.pbix
```

---

## 9. 🔍 Key Insights

The analysis was performed on **1,053 YouTube videos**.

### 📊 Overall Performance

| Metric | Result |
|---|---:|
| **Total Videos** | **1,053** |
| **Total Views** | **1,316,706,003** |
| **Average Views per Video** | **1,250,433** |
| **Total Likes** | **57,698,400** |
| **Total Comments** | **1,091,582** |
| **Average Engagement Rate** | **0.1478** |

### 🏆 Top-Performing Content

The highest-viewed video in the dataset was:

**"C Language Tutorial for Beginners (with Notes ...)"**

with approximately **54.7 million views**.

The second-highest viewed video received approximately **38.0 million views**, while the third-highest received approximately **31.5 million views**.

The video with the highest recorded engagement rate was:

**"Tech Placement & Internship preparation QnA fo..."**

with an engagement rate of approximately **0.9111**.

### 📅 Year-wise Insights

**2022** had the highest average views per video.

| Year | Number of Videos | Average Views |
|---|---:|---:|
| **2022** | 201 | **2,851,206** |
| 2023 | 141 | 1,673,457 |
| 2020 | 84 | 1,099,667 |
| 2024 | 118 | 756,733 |
| 2021 | 365 | 741,261 |

An important observation is that **2021 had the highest number of videos (365)**, but **2022 had the highest average views per video**.

This shows that publishing more videos does not necessarily result in higher average performance per video.

### ⏱️ Duration Insights

The **Very Long** duration category had the highest average views.

| Duration Category | Videos | Average Views |
|---|---:|---:|
| **Very Long** | 37 | **6,033,030** |
| Short | 525 | 1,409,975 |
| Long | 79 | 770,863 |
| Medium | 412 | 709,585 |

However, the **Medium** duration category recorded the highest average engagement rate at approximately **0.1970**.

This shows that the duration category with the highest average views was not necessarily the same category with the highest average engagement.

### 📅 Monthly Insights

**September** recorded the highest average views per video:

- **Average Views:** 1,964,709
- **Videos:** 92

**August** recorded the highest average engagement rate:

- **Average Engagement Rate:** 0.2236
- **Videos:** 63

**May** had the highest number of published videos:

- **Videos Published:** 118

### 📚 Category Insights

The dataset contains two YouTube category IDs.

| Category ID | Videos | Average Views | Average Engagement Rate |
|---|---:|---:|---:|
| **27** | 693 | **1,613,082** | 0.1451 |
| **22** | 360 | 552,334 | **0.1529** |

Category **27** had the higher average views, while Category **22** had the higher average engagement rate.

### 💡 Overall Finding

The analysis demonstrates that **views and engagement measure different aspects of content performance**.

For example:

- The **Very Long** category had the highest average views.
- The **Medium** category had the highest average engagement.
- **2022** had the highest average views by year.
- **August** had the highest average monthly engagement.
- **September** had the highest average monthly views.

Therefore, YouTube content should be evaluated using multiple metrics rather than relying on views alone.

---

## 10. 💡 Business Recommendations

Based on the analytical findings, the following recommendations can be considered:

### 1. Analyze High-View Content

Study videos with exceptionally high views to identify common characteristics such as topic, format, duration, and publishing period.

### 2. Do Not Focus Only on Views

Views should be analyzed together with:

- Likes
- Comments
- Like Rate
- Comment Rate
- Engagement Rate

A video can have high views without having the highest engagement.

### 3. Evaluate Video Duration

The results show that **Very Long** videos had the highest average views, while **Medium** videos had the highest average engagement.

Therefore, content strategy should consider both reach and audience interaction.

### 4. Use Publishing Trends

The monthly and yearly analysis can help identify periods associated with stronger average performance.

For example, **September** had the highest average views, while **August** had the highest average engagement rate in the analyzed dataset.

### 5. Compare Categories

Category-level performance should be monitored because the category with higher average views may not be the same category with higher engagement.

### 6. Use Multiple KPIs for Content Decisions

A balanced content-performance strategy should consider:

```text
Views
+
Likes
+
Comments
+
Engagement
+
Duration
+
Publishing Period
+
Category
```

rather than using a single metric.

---

## 11. 🔄 Project Workflow

```text
┌─────────────────────────────┐
│       YouTube Platform      │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│      YouTube Data API       │
│       Data Collection       │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│    Python / Jupyter         │
│    Data Processing          │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│ Data Cleaning & Preparation │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│    Feature Engineering      │
│ Duration / Engagement /      │
│ Publishing Features          │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│     Cleaned CSV Dataset     │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│          MySQL              │
│     youtube_videos          │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│       SQL Analysis          │
│       20 Questions          │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│        Power BI             │
│        Dashboard            │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│   Insights & Recommendations│
└─────────────────────────────┘
```

---

## 12. 📁 Project Structure

Recommended GitHub repository structure:

```text
YouTube-Content-Performance-Analysis/
│
├── README.md
│
├── data/
│   └── youtube_cleaned_sql.csv
│
├── notebooks/
│   └── 01_youtube_api_test.ipynb
│
├── sql/
│   └── Youtube_Intelligence.sql
│
├── powerbi/
│   └── youtube_intelligenceProject.pbix
│
└── screenshots/
    └── dashboard.png
```

### File Description

| File | Description |
|---|---|
| `README.md` | Project documentation |
| `youtube_cleaned_sql.csv` | Cleaned YouTube dataset |
| `01_youtube_api_test.ipynb` | Python/Jupyter data collection and processing workflow |
| `Youtube_Intelligence.sql` | Database creation, CSV loading and SQL analysis |
| `youtube_intelligenceProject.pbix` | Power BI dashboard |
| `dashboard.png` | Optional dashboard preview |

---

## 13. ✅ Conclusion

**YouTube Content Performance & Engagement Analysis** demonstrates a complete data analytics workflow starting from API-based data collection and ending with interactive business intelligence.

The project combines:

```text
YouTube Data API
        ↓
Python
        ↓
Data Cleaning
        ↓
Feature Engineering
        ↓
CSV
        ↓
MySQL
        ↓
SQL Analysis
        ↓
Power BI
```

The analysis of **1,053 YouTube videos** produced measurable findings across views, likes, comments, engagement, publishing periods, video duration, and categories.

The project demonstrates practical skills in:

- API-based data collection
- Python data processing
- Data cleaning
- Feature engineering
- CSV data handling
- MySQL database management
- SQL querying and analysis
- Business intelligence
- Power BI visualization
- Data-driven insight generation

Overall, the project shows how raw YouTube data can be transformed into a structured analytical solution for understanding **content performance and audience engagement**.

---

## 👨‍💻 Project Information

**Project Name:** YouTube Content Performance & Engagement Analysis

**Project Type:** Data Analytics & Business Intelligence

**Data Source:** YouTube Data API

**Tools:** Python • Pandas • Jupyter Notebook • MySQL • SQL • Power BI • GitHub

**Dataset Size:** 1,053 YouTube videos

---

## 🔐 Security Note

Never commit API keys, passwords, database credentials, or other sensitive information to GitHub.

If an API key has previously been exposed in a notebook or source file, revoke or regenerate it before making the repository public.
