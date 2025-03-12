USE final_project;

SELECT 
    c.Country_ID, 
    c.Country_Name, 
    c.Region, 
    h.Year, 
    h.Happiness_Score, 
    h.Log_GDP_PEr_Capita,
    h.Social_Support,
    h.Life_Expectancy,
    h.Freedom,
    h.Generosity,
    h.Corruption,
    j.`%_Engaged`,
    w.Average_hours_per_week 
FROM final_project.Country AS c
JOIN final_project.Happiness AS h
    ON c.Country_ID = h.Country_ID
LEFT JOIN final_project.Job_Satisfaction AS j
    ON c.Country_ID = j.Country_ID AND h.Year = j.Year
LEFT JOIN final_project.Work_Hours AS w
    ON c.Country_ID = w.Country_ID AND h.Year = w.Year;
    

    
