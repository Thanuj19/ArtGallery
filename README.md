            Project 1 BAN 453 BOS 1
                                     By Thanuj Udayakumar   



Overview:
Gagosian Art Gallery is a company founded in 1983 which specializes in being a middle man between artists and renter and sellers of pieces of art. So, they have a massive collect of art from several artists who wither wish to rent or sell the art pieces and they also have a big customer base who rent or buy the pieces. The company has grown to a significant size now from a small one office business to a large 2000 employee New York office and servicing clients from Sydney to San Francisco. Until this point data has been stored in basic excel sheets and the forms filled by artists and clients were mostly in paper and then updated in an excel sheet. This includes artists forms, rental forms , sale forms etc. 

The growth has caused several significant problems with data management. The company now must employ many staff members to do data entry and paperwork. These jobs are mundane , prone to error and the labor cost is expensive. Lastly it is nearly impossible to keep track of art pieces , its location and where and who it is being sold because. The same art piece could be in New York and next day in Hong Kong and keeping track of it using excel sheets across international borders it very difficult and prone to a lot of errors. Steve Segal the companies COO wants to implement a new data management system where company wide efficiency  and reducing errors could be achieved and different categories of data could be stored properly.
Mission Statement:
The purpose of the Gagosian database system is to maintain the data that is used and generated to support the art rental and sales business of our clients. It will also facilitate cooperation in sharing information and reducing errors between branches.
Mission Objectives:
To allow for staff members of all the branches to access the same data and to eliminate any mistakes caused by the current system.
To be able to quickly lookup information about artists , Renters and buyers , Rent dates, Prices, and details about the artwork itself.
To maintain data on the Artwork, artists, Clients (Renters and Buyers), Details on the rental and sale agreements and ensuring data accuracy .


To be able to perform queries and build reports that help to answer the following business questions:

In what city or geographic region we have most of our rentals and sales? Where is the highest return on investment and highest conversion rate? Which location has the most artists contributing to our firm?

How much variation exists between client rental price and artists listing price.? How much variation exists between the artist's listing price for sale and the actual sold price?
What attributes of the artwork (year, price, etc) influences its final sale price or rental price?
How many pieces of art are rented out or sold to the most loyal customers?

Business Rules:
Each artist can have many artworks or no artwork, but each artwork must have at least one artist and can have many artists contributing to the same art piece.
Each rental agreement will have one art piece and one only. An art piece can either be in a rental agreement or not be in one.
Each sale agreement will have one art piece and one only. An art piece can either be in a sale agreement or not be there in one.
One customer can be in zero or many rental agreements at the same time. Each rental agreement will have one and only one customer.
One customer can be in zero or many sale agreements at the same time. Each sale agreement will have one and only one customer.
2)a) Conceptual Data Model:
 
b) “Artist” is the first entity. It will contain all the information about an artist such as first and last name , address and DOB. 
“Artwork” is the next table. It will contain all the information of all artworks registered within our system. It will have year, title etc. 
“Rental” will contain all the information required for the rental agreements of art pieces. It will contain information like rent start date and end date.
“Sale” will contain information about the sale agreement and it will only contain information about products which are meant to be sold not rented. Information such as sales price and date is present.
“Customers” will contain all the information about customers of the company. Their names , phone numbers and addresses could be found.

3) Conceptual Data Dictionary:

ArtistId is the UniqueId assigned to each artist in the database. Two artists cannot share the same ArtistId.Once an artist signs up with the company he/she will be given an artist Id.
ArtId is the uniqueId assigned to each art piece and cannot be shared by two art pieces. Once a art piece is registered into the database it will be assigned an ArtId
CustomerId is the unique Id assigned to each customer and cannot be shared by two customers. It is assigned to customers once the make rent or purchase an art piece.
RentalId is the unique Id assigned to each rental agreement which is assigned to it once the agreement is made. Two agreements cannot have the same rental Id. 
SaleId is the unique Id assigned to each sale contract. So once the sale contract is made it will be assigned a unique saleId and two agreements cant share the same Id.
4)Normalization:
 
I.	I had changed the address column to 5 unique columns (address_1, city, zip, state and country) in both the artist and customer tables. To achieve 1NF. 
II.	We had already achieved 2 NF because there is no partial dependencies in the above diagram, thus, a composite primary key isn’t required.
III.	There are no transitive dependencies in the diagram so 3NF has been achieved.

By normalizing we can minimize data redundancies and have consistency(to ensure related data is stored in each table). 
It also prevents issues when it comes to database modifications in the future such as deletion and updates. It is more flexible and easier to execute as well.
Normalization in simple terms makes it more organized , easy to understand for other users, and simplifies the database.
