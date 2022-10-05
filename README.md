# Amazon_Vine_Analysis

# Overview 

This is an observation of various reviews of books sold on Amazon.com. In particular, this looks at the total amount of books sold, the number of five-star reviews, and the percentages of books solds with a five star review posted on Amazon.com. To coduct this analysis, Amazon Web Serives (AWS) was applied to create a database. Next, the dataframe from AWS was connected to Postgres through an Structured Query Language (SQL) application called pgAdmin. Finally, the specific data points was calculated through pgAdmin. 

# Results 
As a dislaimer, the total amount of runtime to extract the data in the file, transforming the data to a dataframe in Google Colab, and loading the dataframe onto pgAdmin took 10 to 15 hours. So if you have some free time, grab a buckful of population and watch the computer do its magical work (this is part comedic relief). 
The resources that was used to conduct the analysis is through this data file. The majority of the analaysis was calculated using the computer SQL software
pgAdmin. The information that was computed first was the number of Vine-Reviews and Non_Vine-Reviews. The data acquired examines the number of books sold on Amazon.com. Here are the dataframes for the Vine-Reviews and the Non-Vine Reviews respectively. 

## Figure One (Paid Vine-Reviews Dataframe)
><img width="724" alt="Screen Shot 2022-10-05 at 2 11 50 PM" src="https://user-images.githubusercontent.com/104328106/194153956-fc3b375d-c9de-4e35-a80d-1cad84c87e64.png">




## Figure Two (Unpaid Vine Reviews Dataframe)
<img width="739" alt="Screen Shot 2022-10-05 at 2 15 51 PM" src="https://user-images.githubusercontent.com/104328106/194154730-cd4e2221-9dde-4800-96f8-2be4feac8730.png">



According to the two dataframes, there were 5,012 paid vine-reviews for book and 109,297 unpaid, vine reviews for books. 

Here are the dataframes for Paid five-star vine reviews and unpaid five-star vine reviews respectively. 

## Figure Three (Paid Five Star Vine Reviews Dataframe)

<img width="575" alt="Screen Shot 2022-10-05 at 1 28 39 PM" src="https://user-images.githubusercontent.com/104328106/194145866-62a74dac-56f9-4b30-994c-55a92c5b6bcf.png">

According to Figure Three, there were 2,031 five star vine reviews. Also, from Figure Three, from the neart thousandth of a percent, there were 40.5% of five star paid vine reviewers who bought books on Amazon.com. 


## Figure Four (Unpaid Five Star Vine Reviews Dataframe)

<img width="577" alt="Screen Shot 2022-10-05 at 1 29 04 PM" src="https://user-images.githubusercontent.com/104328106/194145977-78f34136-f3ae-4152-a88f-ecf4f6323fd1.png">

According to Figure Four, there were 49,967 five star vine reviews. Also, from Figure Four, from the neart thousandth of a percent, there were 45.7% of five star paid vine reviewers who bought books on Amazon.com. 

There is a considerable jump of the percentage of five star reviewers who paid or did not pay for the books sold on Amazon.com. 

# Summary 

From the file used to conduct the analysis, this comes from a very large amount of people reviewing books on Amazon. Therefore, we need to consdier how many people were dissatisfied with the books whether customers paid the book or not. That way, the company can get a sense of what type of book the population wants to read based on their satisfactory level. Also, we would like a reasonable amount of people reviewing for a certain type of book as well.  Here are the dataframes representing paid and unpaind vine-reviewed customers giving a 3 star rating, and the books obtained at least 50 votes. 

## Figure 5 (Paid Vine Reviewers With a Three Star Rating)
<img width="595" alt="Screen Shot 2022-10-05 at 2 00 07 PM" src="https://user-images.githubusercontent.com/104328106/194151786-d2592d45-9f25-4841-a426-48175b3cebcb.png">


## Figure 6 (Unpaid Vine Reviewers With a Three Star Rating)
<img width="593" alt="Screen Shot 2022-10-05 at 2 02 56 PM" src="https://user-images.githubusercontent.com/104328106/194152329-983d6ffb-c1fe-418f-b7d1-579a9180581b.png">

As we can see form the two tables, we have 22% paid vine reviewed customers that were neither satisfied or unsatisfied with the purchase while 10% of unpaid vine reviewed customers were neither satisfied or dissatisfied with their purchase on Amazon. 

