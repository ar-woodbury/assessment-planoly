



# Overview

**Assessment**: Data Analyst/Engineer

**Developer**: Alphonso Woodbury

This ReadMe outlines the decisions and process of completing the assigned assessment. In this repo, the primary files are said Readme, planoy-assessment.ipynb, and .sql queries in the 'queries' directory. 

## Analysis

### Tool: DataGrip

### Pre

DataGrip includes tools for connecting to RedShift quickly; after creating a New Project, select the 'New' Data Source icon (+) and choose Datasource>Amazon Redshift. Populate the host, user, password, port, and database fields and test the connection.  

Once connected, queries can be executed in the console or in sql files. I found it easier to keep the queries in separate files as to not need to indicate which should be run on execution. 


#### Post

Because the sql queries are in separate files from the Jupyter notebook, they can still be loaded into DataGrip and ran as written. 

## Delivery 

The results of the analysis are presented in the planoly-assessment.ipynb. This Jupyter notebook uses the necessary Python packages to connect to a Redshift database and execute queries in .SQL files in the ‘queries’ directory. Each question in the assessment is listed with a print_query call to show the script to be run against the db. I present in this format as it would be easy for a colleague to add their own sql files to the directory and quickly begin analyses without having to change much of the notebook. Additionally, it is the simplest route to having queries and visualizations in one document. 

### Packages

- sqlalchemy: create and manage connection to database
- pandas: EDA tool, easily import data from various sources including sql engines
- matplotlib: used to make quick (or complex) visualizations

### Setup

After using DataGrip for exploring the data, I chose to try DataSpell for my analysis and notebook production. I think in the future I would  start in DataSpell for small-scale analysis like this, contingent on the appropriate connectors. The notebook can be opened in any Jupyter environment, such as from the Anaconda distribution. 

To run the queries and view the results requires some setup steps:
- It is recommended to use a virtual environment, like venv
- In your terminal, change working directory to the root of this repo and run ‘pip install -r requirements.txt’ to install dependencies
- Execute the IMPORT block in the notebook
- Execute the 3 METHODS blocks in the notebook; this includes the start_engine method to create the connection to the Redshift db

---
# Closing

This results of this assessment shows how I plan, execute, and organize my work with data. I used tools I didn't have experience with (but am familiar with JetBrains products), with the exception of dbt which I could not successfully connect to but will explore further. I did slightly exceed the requested time but needed to ensure the code provided would run successfully. I look forward to discussing my product!