CREATE DATABASE IF NOT EXISTS final_project;

USE final_project;

CREATE TABLE `Country`(
    `Country_ID` BIGINT NOT NULL,
    `Country_Name` VARCHAR(255) NOT NULL,
    `Region` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`Country_ID`)
);
CREATE TABLE `Work_Hours`(
    `WorkHours_ID` BIGINT NOT NULL,
    `Country_ID` BIGINT NOT NULL,
    `Year` BIGINT NOT NULL,
    `Average_hours_worked` FLOAT(4) NOT NULL,
    `Average_hours_per_week` FLOAT(2) NOT NULL,
    PRIMARY KEY(`WorkHours_ID`)
);
CREATE TABLE `Job_Satisfaction`(
    `JobSat_ID` BIGINT NOT NULL,
    `Country_ID` BIGINT NOT NULL,
    `Year` BIGINT NOT NULL,
    `%_Engaged` BIGINT NOT NULL,
    PRIMARY KEY(`JobSat_ID`)
);
CREATE TABLE `Happiness`(
    `Happiness_ID` BIGINT NOT NULL,
    `Country_ID` BIGINT NOT NULL,
    `Year` BIGINT NOT NULL,
    `Happiness_Score` FLOAT(2) NOT NULL,
    `Log_GDP_Per_Capita` FLOAT(2) NOT NULL,
    `Social_Support` FLOAT(2) NOT NULL,
    `Life_Expectancy` FLOAT(2) NOT NULL,
    `Freedom` FLOAT(2) NOT NULL,
    `Generosity` FLOAT(2) NOT NULL,
    `Corruption` FLOAT(2) NOT NULL,
    PRIMARY KEY(`Happiness_ID`)
);
ALTER TABLE
    `Happiness` ADD CONSTRAINT `happiness_country_id_foreign` FOREIGN KEY(`Country_ID`) REFERENCES `Country`(`Country_ID`);
ALTER TABLE
    `Work_Hours` ADD CONSTRAINT `work_hours_country_id_foreign` FOREIGN KEY(`Country_ID`) REFERENCES `Country`(`Country_ID`);
ALTER TABLE
    `Job_Satisfaction` ADD CONSTRAINT `job_satisfaction_country_id_foreign` FOREIGN KEY(`Country_ID`) REFERENCES `Country`(`Country_ID`);