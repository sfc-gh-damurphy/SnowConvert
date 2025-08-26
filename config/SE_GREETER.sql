USE ROLE ACCOUNTADMIN;

-- Create API integration
CREATE OR REPLACE API INTEGRATION dora_api_integration
  API_PROVIDER = AWS_API_GATEWAY
  API_AWS_ROLE_ARN = 'arn:aws:iam::321463406630:role/snowflakeLearnerAssumedRole'
  ENABLED = TRUE
  API_ALLOWED_PREFIXES = (
    'https://awy6hshxy4.execute-api.us-west-2.amazonaws.com/dev/edu_dora'
  );

-- Confirm integration
SHOW INTEGRATIONS;

-- Create utility database
CREATE OR REPLACE DATABASE util_db;

-- Create greeting function
CREATE OR REPLACE EXTERNAL FUNCTION util_db.public.se_greeting(
    email VARCHAR,
    firstname VARCHAR,
    middlename VARCHAR,
    lastname VARCHAR
)
RETURNS VARIANT
API_INTEGRATION = dora_api_integration
CONTEXT_HEADERS = (
  CURRENT_TIMESTAMP,
  CURRENT_ACCOUNT,
  CURRENT_STATEMENT,
  CURRENT_ACCOUNT_NAME
)
AS 'https://awy6hshxy4.execute-api.us-west-2.amazonaws.com/dev/edu_dora/greeting';

------------------------------------------------------------
---PLEASE EDIT to be your email, first name and last name---
------------------------------------------------------------
SELECT util_db.public.se_greeting(
  'snowflake email',
  'First Name',
  '',
  'Last Name'
);
------------------------------------------------------------

-- Create grading function
CREATE OR REPLACE EXTERNAL FUNCTION util_db.public.se_grader(
    step VARCHAR,
    passed BOOLEAN,
    actual INTEGER,
    expected INTEGER,
    description VARCHAR
)
RETURNS VARIANT
API_INTEGRATION = dora_api_integration
CONTEXT_HEADERS = (
  CURRENT_TIMESTAMP,
  CURRENT_ACCOUNT,
  CURRENT_STATEMENT,
  CURRENT_ACCOUNT_NAME
)
AS 'https://awy6hshxy4.execute-api.us-west-2.amazonaws.com/dev/edu_dora/grader'; 
