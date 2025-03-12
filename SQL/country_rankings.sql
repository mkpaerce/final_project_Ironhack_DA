USE final_project;

CREATE TABLE Rankings (
    Country_ID BIGINT NOT NULL,
    Year BIGINT NOT NULL,
    Happiness_Score_Rank INT,
    GDP_Per_Capita_Rank INT,
    Social_Support_Rank INT,
    Life_Expectancy_Rank INT,
    Freedom_Rank INT,
    Generosity_Rank INT,
    Corruption_Rank INT, -- Lower values ranked 1st
    PRIMARY KEY (Country_ID, Year)
);

-- Insert ranked data using subquery
INSERT INTO Rankings
SELECT 
    h.Country_ID,
    h.Year,
    RANK() OVER (PARTITION BY h.Year ORDER BY h.Happiness_Score DESC) AS Happiness_Score_Rank,
    RANK() OVER (PARTITION BY h.Year ORDER BY h.Log_GDP_Per_Capita DESC) AS GDP_Per_Capita_Rank,
    RANK() OVER (PARTITION BY h.Year ORDER BY h.Social_Support DESC) AS Social_Support_Rank,
    RANK() OVER (PARTITION BY h.Year ORDER BY h.Life_Expectancy DESC) AS Life_Expectancy_Rank,
    RANK() OVER (PARTITION BY h.Year ORDER BY h.Freedom DESC) AS Freedom_Rank,
    RANK() OVER (PARTITION BY h.Year ORDER BY h.Generosity DESC) AS Generosity_Rank,
    RANK() OVER (PARTITION BY h.Year ORDER BY h.Corruption ASC) AS Corruption_Rank -- Lower is better
FROM Happiness h;


SELECT * FROM Rankings;
