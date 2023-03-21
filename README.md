# Crowdfunding_ETL
Project 2
Start Assignment
•	Due Thursday by 11:59pm
 
•	Points 100
 
•	Submitting a text entry box or a website url
For the ETL mini project, you will work with a partner to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After you transform the data, you'll create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, you’ll upload the CSV file data into a Postgres database.
Since this is a one-week project, make sure that you have done at least half of your project before the third day of class to stay on track.
Although you and your partner will divide the work, it’s essential to collaborate and communicate while working on different parts of the project. Be sure to check in with your partner regularly and offer support.
Files
Download the starter code and files to help you get started:
Project 2 ETL filesLinks to an external site.
Before You Begin
1.	Create a new repository, named Crowdfunding_ETL, for this project. Do not add this homework to an existing repository.
2.	Clone the new repository to your computer.
3.	Rename the ETL_Mini_Project_Starter_Code.ipynb file with your first name initial and last name, for example, ETL_Mini_Project_NRomanoff.ipynb. Then, add this Jupyter notebook file and the Resources folder containing the crowdfunding.xlsx and the contacts.xlsx files to your repository.
4.	Push the changes to GitHub
Instructions
The instructions for this mini project are divided into the following subsections:
 •	Create the Category and Subcategory DataFrames
 •	Create the Campaign DataFrame
 •	Create the Contacts DataFrame
 •	Create the Crowdfunding Database
Create the Category and Subcategory DataFrames
1.	Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
 o	A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
 o	A "category" column that contains only the category titles
 o	The following image shows this category DataFrame:
 • Create the Category and Subcategory DataFrames • 
![image](https://user-images.githubusercontent.com/117088893/226711092-e6e17ccd-3130-43d4-9fd8-ffa8b0b44d93.png)

2.	Export the category DataFrame as category.csv and save it to your GitHub repository.
3.	Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
 o	A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
 o	A "subcategory" column that contains only the subcategory titles
 o	The following image shows this subcategory DataFrame:
 
4.	Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.
Create the Campaign DataFrame
1.	Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
 o	The "cf_id" column
 o	The "contact_id" column
 o	The "company_name" column
 o	The "blurb" column, renamed to "description"
 o	The "goal" column, converted to the float data type
 o	The "pledged" column, converted to the float data type
 o	The "outcome" column
 o	The "backers_count" column
 o	The "country" column
 o	The "currency" column
 o	The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
 o	The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
 o	The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
 o	The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
 o	The following image shows this campaign DataFrame:
 
2.	Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.
Create the Contacts DataFrame
1.	Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:
 o	Option 1: Use Python dictionary methods.
 o	Option 2: Use regular expressions.
2.	If you chose Option 1, complete the following steps:
 o	Import the contacts.xlsx file into a DataFrame.
 o	Iterate through the DataFrame, converting each row to a dictionary.
 o	Iterate through each dictionary, doing the following:
	Extract the dictionary values from the keys by using a Python list comprehension.
	Add the values for each row to a new list.
 o	Create a new DataFrame that contains the extracted data.
 o	Split each "name" column value into a first and last name, and place each in a new column.
 o	Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.
3.	If you chose Option 2, complete the following steps:
 o	Import the contacts.xlsx file into a DataFrame.
 o	Extract the "contact_id", "name", and "email" columns by using regular expressions.
 o	Create a new DataFrame with the extracted data.
 o	Convert the "contact_id" column to the integer type.
 o	Split each "name" column value into a first and a last name, and place each in a new column.
 o	Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.
4.	Check that your final DataFrame resembles the one in the following image:
 
Create the Crowdfunding Database
1.	Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..
2.	Use the information from the ERD to create a table schema for each CSV file.
Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.
3.	Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
4.	Create a new Postgres database, named crowdfunding_db.
5.	Using the database schema, create the tables in the correct order to handle the foreign keys.
6.	Verify the table creation by running a SELECT statement for each table.
7.	Import each CSV file into its corresponding SQL table.
8.	Verify that each table has the correct data by running a SELECT statement for each.
Hints
 •	To split each "category & sub-category" column value into "category" and "subcategory" column values, use df[["new_column1","new_column2"]] = df["column"].str.split(). Make sure to pass the correct parameters to the split() function.
 •	To get the unique category and subcategory values from the "category" and "subcategory" columns, create a NumPy array where the array length equals the number of unique categories and unique subcategories from each column. For information about how to do so, see numpy.arangeLinks to an external site. in the NumPy documentation.
 •	To create the category and subcategory identification numbers, use a list comprehension to add the "cat" string or the "subcat" string to each number in the category or the subcategory array, respectively.
 •	For more information about creating a new Pandas DataFrame, see the pandas.DataFrameLinks to an external site. in the Pandas documentation.
 •	To convert the "goal" and "pledged" columns to the float data type, use the astype() method.
 •	To convert the "launch_date" and "end_date" UTC times to the datetime format, see the Transform_Grocery_Orders_Solved.ipynb activity solution.
 •	For more information about how to add the "category_id" and "subcategory_id" unique identification numbers to the campaign DataFrame, see the pandas.DataFrame.mergeLinks to an external site. in the Pandas documentation.
Support and Resources
Your instructional team will provide support during classes and office hours. You will also have access to learning assistants and tutors to help you with topics as needed. Make sure to take advantage of these resources as you collaborate with your partner on this project.
Requirements
A Category DataFrame is Created (15 points)
 •	The DataFrame contains a "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories (5 points)
 •	The DataFrame has a "category" column that contains only the category titles (5 points)
 •	The category DataFrame is exported as category.csv (5 points)
A Subcategory DataFrame is Created (15 points)
 •	The DataFrame contains a "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories (5 points)
 •	The DataFrame contains a "subcategory" column that contains only the subcategory titles (5 points)
 •	The subcategory DataFrame is exported as category.csv (5 points)
A Campaign DataFrame is Created (30 points)
 •	The DataFrame has the following columns: (25 points)
 o	A "cf_id" column
 o	A "contact_id" column
 o	A "company_name" column
 o	A "description" column
 o	A "goal" column that is a float data type
 o	A "pledged" column that is a float data type
 o	An "outcome" column
 o	A "backers_count" column
 o	A "country" column
 o	A "currency" column
 o	A "launch_date" with the time formatted as "YYYY-MM-DD"
 o	An "end_date" with the time formatted as "YYYY-MM-DD"
 o	A "category_id" column that contains the unique identification numbers matching those in the "category_id" column of the category DataFrame
 o	A "subcategory_id" column that contains the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
 •	The campaign DataFrame is exported as campaign.csv (5 points)
A Contacts DataFrame is Created (15 points)
 •	The DataFrame has the following columns: (10 points)
 o	A "contact_id" column
 o	A "first_name" column
 o	A "last_name" column
 o	An "email" column
 •	The contacts DataFrame is exported as contacts.csv (5 points)
A Crowdfunding Database is Created (25 points)
 •	A database schema labeled, crowdfunding_db_schema.sql is created (5 points)
 •	A crowdfunding_db is created using the crowdfunding_db_schema.sql file (5 points)
 •	The database has the appropriate primary and foreign keys and relationships (5 points)
 •	Each CSV file is imported into the appropriate table without errors (5 points)
 •	The data from each table is displayed using a SELECT * statement (5 points)
This project will be evaluated against the requirements and assigned a grade according to the following table:
Grade	Points
A (+/-)	90+
B (+/-)	80–89
C (+/-)	70–79
D (+/-)	60–69
F (+/-)	< 60
Submission
You are required to submit the URL of your GitHub repository for grading.
NOTE
Projects are requirements for graduation. While you are allowed to miss up to two Challenge assignments and still earn your certificate, projects cannot be skipped.
References
Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.
PreviousNext
© 2023 edX Boot Camps LLC

