# Video Game Sales Case Study

## Introduction
In this case study, I will perform many real-world tasks of a entry data analyst for company, Circana. In order to answer the key business questions, I will follow the steps of the data analysis process: [Ask](https://github.com/davaughnjr/Video_Game_Sales/tree/main/README.md#ask), [Prepare](https://github.com/davaughnjr/Video_Game_Sales/tree/main/README.md#prepare), [Process](https://github.com/davaughnjr/Video_Game_Sales/tree/main/README.md#process), [Analyze](https://github.com/davaughnjr/Video_Game_Sales/tree/main/README.md#analyze-and-share), [Share](https://github.com/davaughnjr/Video_Game_Sales/tree/main/README.md#analyze-and-share), and [Act](https://github.com/davaughnjr/Video_Game_Sales#act).
### Quick links:
Data Source: [Video Game Sales](https://www.kaggle.com/datasets/gregorut/videogamesales?select=vgsales.csv![image](https://github.com/user-attachments/assets/260362b7-b957-41ff-a829-121e7dab10fa)
) [accessed on 03/08/25]  
Based on: [VGChartz](https://www.vgchartz.com/gamedb/)
  
SQL Queries:  
[Data Exploration](https://github.com/davaughnjr/Video_Game_Sales/blob/main/DataExploration.sql)  
  
Data Visualizations: [Tableau](https://public.tableau.com/app/profile/davaughn.henderson/viz/Games_17413049606030/Story1)  
## Background
### Circana
Circana, formerly known as Information Resources, Inc. (IRI) and The NPD Group, is a leading American market research and technology company headquartered in Chicago, Illinois. The company was established in 2023 following the merger of IRI and The NPD Group, combining their extensive expertise to provide comprehensive insights into consumer behavior.   
  
With a global presence spanning 19 countries and a workforce of over 7,000 employees, Circana partners with nearly 7,000 of the world's leading brands and retailers. The company leverages unparalleled technology, advanced analytics, cross-industry data, and deep industry expertise to help clients understand the complexities of consumer behavior. 
  
Circana's services encompass a wide range of industries, including apparel, appliances, automotive, beauty, consumer electronics, and more. The company offers market intelligence and business analytics, enabling clients to measure performance, predict future trends, improve marketing strategies, and identify new market opportunities.

### Scenario
As an entry data analyst in the Marketing Analyst team at Circana, I am responsible for analyzing and interpreting market data to generate valuable insights. The Executive Director of Games, Mat Piscatella, has requested insights on all-time video game sales. These insights will be derived from the provided data to support strategic decision-making and market analysis.  

## Ask
### Business Task
The team aims to understand key sales trends, including:
### Analysis Questions
1. Best-selling video game of all time
2. Highest-selling software per platform
3. Top-selling genres
4. Sales performance by region
5. Yearly sales trends

## Prepare
### Data Source
I will analyze the historical sales data from 1970 to 2017 to identify trends. This data, Gregory Smith kaggle and can be downloaded from [Video Game Sales](https://www.kaggle.com/datasets/gregorut/videogamesales?select=vgsales.csv).
  
This dataset contains a list of video games with sales greater than 100,000 copies. It was generated by a scrape of vgchartz.com
### Data Organization
There is one file which dataset includes details such as the games Rank, Name, Platform, Year, Genre, Publisher, NA_Sales, EU_Sales, JP_Sales, Other_Sales & Global_Sales

## Process
BigQuery is used to clean the dataset, while adding all the missing data in Excel 
### Data Exploration
SQL Query: [Data Exploration](https://github.com/davaughnjr/Video_Game_Sales/blob/main/DataExploration.sql)  
Before cleaning the data, I am familiarizing myself with the data to find the inconsistencies.  

Observations: 
1. All Platforms and number of times they're listed

![image](https://github.com/user-attachments/assets/30e11873-8084-4f8a-a2cf-3740cc9047dd)

2. All Genres and number of times they're listed

![image](https://github.com/user-attachments/assets/4ae55c87-fbdb-4510-bc4e-80fec6021e92)

3. All Publishers and number of times they're listed

![image](https://github.com/user-attachments/assets/e7d8a6c1-f3b3-41d6-b312-c64d0d8e6184)

![image](https://github.com/user-attachments/assets/8bbd34aa-d493-4bec-a355-b2523983c193)

4. All Years and number of times they're listed

![image](https://github.com/user-attachments/assets/da0664ec-f341-4df7-bfba-4a4627239805)

![image](https://github.com/user-attachments/assets/f633e51a-5abe-4ba4-a8d1-c9de1b042f15)

### Data Cleaning
1. All rows with missing Plublisher values had their Plublisher added by cross referencing with a Google search to verify the games Plublisher
2. All rows with missing Year values totaling of 251 had their Year added by cross referencing with a Google search to verify the games Realease Date
3. Removed the one duplicate row I found

![image](https://github.com/user-attachments/assets/5cfadb87-94c7-4800-ba9c-fddd3f47a155)

4. All data has been cleaned, verified with Excel and SQL
  
## Analyze and Share
Data Visualization: [Tableau](https://public.tableau.com/app/profile/davaughn.henderson/viz/Games_17413049606030/Story1)  
The data is now prepared of analysis and have been visualized in Tableau.
The analysis question is: What are the best-selling video games?

Here is a treemap to show the highest selling video games of all time over 10 million in sales

![image](https://github.com/user-attachments/assets/4b2458bb-95ed-43ce-8811-59f99a3e4e8c)

We can see that Wii Sport is the highest selling game at with over 82 million in sales. The Wii & DS as a platform has more games with over 10 million units sold compared to any other platform. The most sold games are mostly made up of Nintendo games and the Call of Duty franchise.

Here is the most sold games per Region

![image](https://github.com/user-attachments/assets/26859b65-d6f5-4202-a048-b6c26e5a1e86)

![image](https://github.com/user-attachments/assets/1e4bb2cc-8301-44c2-8799-4e7700e05739)

EU: Similar to global sales, Wii Sports is the top-selling game in this region, followed by multiple Nintendo titles. Grand Theft Auto V is also a strong performer, and when combining sales from both PS3 and PS4 platforms, it reaches 15.08 million units, making it the second-best-selling game in the region. At this time, the Wii appears to be the dominant platform in terms of total game sales.

JP: Japan’s sales numbers are lower compared to other regions, with Pokémon games leading the market. The Game Boy classic Pokémon Red/Blue is the highest-selling title, followed by Pokémon Gold/Silver. Unlike other regions, Wii Sports does not dominate sales in Japan. However, Nintendo remains the leading company, with all mainline Pokémon games ranking among the region’s top sellers.

NA: In North America, Wii Sports is the best-selling game worldwide, with Nintendo titles continuing to dominate the market, similar to other regions. However, unlike Japan and Europe, Western-developed games gain a stronger presence in NA. The Call of Duty franchise and Grand Theft Auto have established themselves among the top sellers. Interestingly, classic titles such as Duck Hunt, Tetris, and Super Mario Bros. remain highly popular, making it into the top five best-selling games alongside Wii Sports. When combined, these three older games outsell Wii Sports, with a total of 79.21 million units sold.

Here is a bar graph with a breakdown of the top selling games global and segmented in regions with at least 20million copies sold

![image](https://github.com/user-attachments/assets/5ee5aa9d-2c88-47c6-85f6-b1c4d45757d4)

We can clearly see the bestselling games and their regional sales trends. Nintendo games continue to dominate as the top-selling games of all time, while Western military shooters and Grand Theft Auto also secure spots on the list. A notable surprise is the strong sales of Duck Hunt and Kinect Adventures, along with Minecraft gaining traction as a rising bestseller.

Here we can see the bestselling video games in a multitude of different ways

![image](https://github.com/user-attachments/assets/e96885ea-2413-4b29-a1e7-7d8fc95453eb)

![image](https://github.com/user-attachments/assets/e0765d5c-282a-48b2-aa56-804fcbf6bf44)

Year: 2008 marks the peak year for game sales, reaching nearly 700 million units sold. The Wii led sales with 179.9 million units, followed by the DS at 148.8 million units. With additional data, we might observe a consistent upward trend in game sales rather than the decline currently reflected in the available figures.

Publisher: The trend remains unchanged—Nintendo continues to dominate the market, leading with over 1.1 billion units sold. The Wii stands out as the top performer, contributing 322 million units to Nintendo's total. No other publisher comes close, with Activision ranking second at just over 200 million units sold. It would be interesting to see current sales data, as the gap between Nintendo and other publishers may be narrowing over time, though Nintendo still maintains a significant lead.

Platform: The PlayStation 2 (PS2) holds the top spot in sales, which is expected given its immense popularity during its time, with 1.256 billion units sold. As newer consoles are released and gaming continues to grow, sales figures for other platforms are catching up. The Xbox 360 (972 million units) and PlayStation 3 (958 million units) are closing in, while the Wii, surprisingly in fourth place, has reached 927 million units sold.

Genre: Action games are the most popular genre, with the PS3 (307.9 million units sold) and PS2 (272.8 million units sold) leading the way. Sports games follow as the second-best-selling genre, with the PS2 topping the list at 273.4 million units sold. On the other end, strategy games are the least popular, with PC leading in sales at 45.9 million units.

From these insights, we can infer that Nintendo games remain a fan favorite, likely due to their strong focus on family-friendly content compared to other publishers. The Wii and PS2 stand out as the most beloved consoles, though newer consoles are steadily catching up. Action games emerge as the most popular genre, and North America leads as the primary contributor to software sales.
  
Summary:
  
Key Findings:
1. Best-Selling Game: Wii Sports leads with over 82 million units sold.
2. Top Platforms: The Wii and DS have the most games exceeding 10 million sales.
3. Dominant Publishers: Nintendo remains the top-selling publisher, surpassing 1.1 billion units in sales.
4. Top-Selling Genres: Action is the most popular, followed by sports games.

Regional Sales Trends:
1. EU: Wii Sports leads, followed by GTA V (PS3 & PS4 combined: 15.08M units).
2. JP: Pokémon Red/Blue is the best-seller, with Pokémon games dominating the market.
3. NA: Wii Sports is the top game, but Western titles like Call of Duty and GTA have a stronger presence. Classic games (Duck Hunt, Tetris, Super Mario Bros.) also remain among the highest-selling.

Additional Insights:
1. 2008 was the peak year for game sales, with nearly 700 million units sold, driven by Wii (179.9M) and DS (148.8M).
2. PS2 remains the best-selling platform, with 1.256 billion units sold.
3. Action games lead sales, with the PS3 (307.9M) and PS2 (272.8M) as top-selling platforms for the genre.
4. North America contributes the most to software sales, while Nintendo’s focus on family-friendly content keeps it ahead of competitors.

These insights highlight Nintendo’s long-standing dominance, shifting genre preferences, and evolving platform trends in the gaming industry. 
  
## Act
After analyzing the differences between game sales, targeted marketing strategies can be developed to encourage more family friendly, casual, and shorter games that focus on gameplay and not graphics.

Recommendations:  
1. Optimize Marketing Strategies Based on Regional Preferences
2. Tailor marketing efforts by region-specific gaming habits rather than applying a one-size-fits-all approach.
3. Explore Genre-Specific Monetization Strategies
4. Action & FPS Dominate: These genres consistently lead sales—developers should prioritize new releases, expansions, and remasters in these categories.
5. Since PS2, Wii, and DS led historical sales, evaluate whether newer platforms (PS5, Xbox Series X, Nintendo Switch) are following similar sales trends.
6. Study how indie developers (e.g., Minecraft, Hollow Knight) gain traction and how established publishers can tap into indie-like innovation.
