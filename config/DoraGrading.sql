-- =============================================================================
-- VALIDATION QUERIES FOR ADVENTUREWORKS DATABASE
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Validate All Tables and Views Created
-- -----------------------------------------------------------------------------
USE DATABASE ADVENTUREWORKS;
USE SCHEMA INFORMATION_SCHEMA;

SELECT 
    util_db.public.se_grader(
        step,
        (actual = expected),
        actual,
        expected,
        description
    ) AS graded_results
FROM (
    SELECT 
        'SEDW20' AS step,
        (
            SELECT COUNT(TABLE_NAME)
            FROM TABLES
        ) AS actual,
        83 AS expected,
        'All Tables and Views Created for SnowConvert Lab' AS description
);

-- -----------------------------------------------------------------------------
-- Validate All Functions Created
-- -----------------------------------------------------------------------------
USE DATABASE ADVENTUREWORKS;
USE SCHEMA INFORMATION_SCHEMA;

SELECT 
    util_db.public.se_grader(
        step,
        (actual = expected),
        actual,
        expected,
        description
    ) AS graded_results
FROM (
    SELECT 
        'SEDW21' AS step,
        (
            SELECT COUNT(function_name)
            FROM functions
        ) AS actual,
        3 AS expected,
        'All Functions for SnowConvert Lab' AS description
);
