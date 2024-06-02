
Azure ETL Data Pipeline on Olympic Dataset 

![Architecture](./tokyo-olympic-azure.drawio.png) 

--------------------------------------------------
Data source :- 

Dataset :- https://www.kaggle.com/datasets/arjunprasadsarkhel/2021-olympics-in-tokyo  

Details
This contains the details of over 11,000 athletes, with 47 disciplines, along with 743 Teams taking part in the 2021(2020) Tokyo Olympics.

This dataset contains the details of the Athletes, Coaches, Teams participating as well as the Entries by gender. It contains their names, countries represented, discipline, gender of competitors, name of the coaches. 

This is uploaded to github and in data folder
------------------------------------------------
Data Lake Gen2:-
First create storage account 

Once storage account is created go to containers 

Create container - create folders for raw and transformed 

![Architecture](./data-lake-gen2.PNG) 


-----------------------------------------------
Data Factory:- 

Next head over to Data Factory and create a single data factory 

Create copy data activity . in source select http then select csv 

Go to github select particular csv , click on raw data  

While creating the link on azure activity use the raw file url as source 

Create sink to azure data lake gen 2 browse path name to raw data

Validate and debug 

Now data should be stored in storage containers raw data folder double check that 

Do this for all the files and make sure every file has reached storage container 

![Architecture](./data-factory.PNG) 

------------------------------------------------ 
DataBricks :- 

Head over to Databricks to basic stuff launch notebook 

To mount data from azure data lake gen2 go to app registration 

Copy client id and tenant id on notepad 

Create client secrets from certificates and secrets 

paste configs dictionary code in notebook

Once mounting part is true 

Go to storage account and IAM 
Click on add and then Add role assignment  

Choose storage blob data contributor click next

We are doing this stuff so that we can actually access our mounted data in our notebook 

Select add member add our app name which we created from app registrations 

Read data using spark, do transformation,load data to transformed_data folder 

Check that it should be reflecting in both notebook and storage container 

![Architecture](./databricks.PNG) 

------------------------------------------------

Synapse Analytics:- 

Go to synapse analytics ,just create follow the ui , launch synapse studio

(Note :- synapse analytics is so powerful that we can do every part of our architecture like creating data flow for loading,writing spark code,writing sql code 
) 


Go to data,click on add choose data lake 

Click on table from data lake follow ui import all csv from transformed data folder 

Finally SQL based analysis to derive few insights on Azure Synapse analytics 

![Architecture](./synapse-analytics.PNG) 

---------------------------------------------------- 

This Guided Project from Darshil Parmar was done to get a better understanding of Azure platform and 
Data engineering in general 

Source :- 
https://www.youtube.com/watch?v=IaA9YNlg5hM 

https://www.youtube.com/watch?v=nW0ffUW2vw4 


