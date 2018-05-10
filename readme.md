# Farm-to-Table

# Table of Contents

  * [What is the Problem and how will it be resolved?](#What-is-the-Problem-and-how-will-it-be-resolved-)
    + [The Problem](#the-problem)
      - [Why is there a strong demand to buy direct from the farmers/primary producers?](#Why-is-there-a-strong-demand-to-buy-direct-from-the-farmers/primary-producers-)
      - [Why online all of a sudden?](#Why-online-all-of-a-sudden-)
      - [Isn't there already existing solutions in place?](#Isn't-there-already-existing-solutions-in-place-)
      - [What's wrong with the sites that already exist?](#what-s-wrong-with-the-sites-that-already-exist-)
      - [Do you think Australia needs this solution?](Do-you-think-Australia-needs-this-solution-)
    + [The Solution](#the-solution)
  * [User Stories](#user-stories)
    + [Preliminary User Stories](#preliminary-user-stories)
    + [Detailed User Stories](#detailed-user-stories)
  * [Workflow](#workflow)
  * [Style Guide](#style-guide)
  * [Wireframes](#wireframes)
  * [ERD](#erd)
  * [Trello Board](#trello-board)


# What is the Problem and how will it be resolved?

## The Problem

There is an apetite for a better way to connect farmers with consumers and businesses.  Rather than a wesbite *reselling* a farms produce, why not allow the farmers to sell *direct* to the market.

I have broken down this need by addressing the following concerns:

* Why is there a strong demand to buy direct from the farmers/primary producers?
* Why online all of a sudden?
* Isn't there already existing solutions in place?
* Do you think Australia needs this solution?

### Why is there a strong demand to buy direct from the farmers/primary producers?

This issue can be addressed by looking at who the client/target market is.  For day-to-day consumers, the use of major supermarkets like Coles and Aldi is sufficient.  However, questions have been raised as to to the actual freshness of the product received also the inflated costs associated.  When it comes to businesses, such as cafes, the issue becomes much larger.  Normally a cafe would have to order from multiple suppliers, involving numerous invoices and phone calls.  

There has to be a better solution that generates benefits for the actual producers by minimising their "middle man" costs and also improve their processing time.  Other benefits of going "direct-to-the-source" include:

* Minimised costs of production for restaurants and cafes through lower supply costs
* Fresher produce as the *time-to-table* is drastically reduced without the need of employing a third party distributor
* A more simplified order system that grants primary producers more autonomy over their order process

Normally producers would sell their yield at a market set wholesale price to suppliers/distributors and they would the  mark up the price for a further profit.  Some producers will see their services as necessery because they don't have the infrastructure in place to deliver their produce.  However, many suppliers in Sydney (such as [Nicholson & Saville](http://nicholsonsaville.com.au/)) already have a delivery system in place.  What they lack is a **common** marketplace, available online, to sell their products.
***
### Why online all of a sudden?

Being able to view, sell and organise produce online can bring so many benefits.  For starters, many chefs would be used to placing orders over the phone.  However when you're done with service at 11pm you're normally just speaking to into a voicemail.  Wouldn't it just be easier to go online and select your orders with peace of mind.  Having that ordering process online allows for greater convenience as its 24/7 and with email reciepts you'd be more organised than the usual paper invoices.

Consumers would also benefit from an online store through reductions in their food bills.  The running costs of an online store pale in significance to a traditional retail outlet.  However also as a direct benefit to this consumers also get the convenience associated with being able to place orders wherever they are and not restricted to store opening hours (aside from shipping cut offs etc)
***
### Isn't there already existing solutions in place?

Strictly speaking, in the international community, this idea exists to a limited degree.  Within Australia, there are online stores operating that claim to be a direct marketplace but in reality they are nothing more than fronts for 3rd party suppliers.  Retailers such as *Harris Farm* and *Farmhouse Direct* allow to buy directly from producers but the take up has been minimal and the variety on offer is inadequate for commercial purposes.  Harris Farm in particular buy from the producer and resell the product - however they credit where it has been sourced.

A national solution that is well marketed towards not only consumers but also commercial users is in demand.  Talking to cafe owners in Coogee, NSW: it is clear that leaving voicemails for orders is something that should have changed long ago.  
***
### Do you think Australia needs this solution?

At present there is only one online solution remotely similar to what I'm proposing.  Their target market is only to domestic consumers and negelects the needs of the commercial environment and has failed to appeal to the larger farms and suppliers in Australia's food chain.

My solution would provide a platform for a multitude of producers to sell varying quantities of their product but hopefully tap into the commercial side of the industry.
***
## The Solution

Design and build a marketplace where producers can sell their produce to commercial entities (such as cafes and restaurants) but also allow domestic consumers to have accessbility to the catelogue and take advantage of wholesale prices.
***
# User Stories

## Preliminary User Stories

![User Stories 1/3](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/userstories13.png "User Stories 1/3") ![User Stories 2/3](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/userstories23.png "User Stories 2/3") ![User Stories 3/3](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/userstories33.png "User Stories 3/3")
***
## Detailed User Stories

***Users should be able to browse the products without the need for an account***

**Feature:** View Product List

* Not logged in/without an account
* Browse catalogue
* Because a user should eb able to see what the site offers before signing up.

**Scenario:** User navigates to site and immediately browses products

* Given I'm not logged in
* Click onto the product catalogue
* Able to see products and relevant descriptions
***
***Users shouldn't be able to ammend products that don't belong to them***

**Feature:** Ammend Products

* Logged in to my account
* Shouldn't be able to edit product that does not belong to them
* Because only the seller of the items should have that right

**Scenario:** User logs in and attempts to edit another users product

* Given I'm logged into an account that does not own the product in question
* The facility to edit should not be there, or permitted
* The user only has authority to ammend their own products
***
***Users should be able to message each other when logged in***

**Feature:** Message users

* User is logged in
* Messages a seller
* Because the ability to create custom orders and resolve issues with sellers is important

**Scenario:** User wants to message a seller

* User logs in
* Finds the seller they need to message
* Is able to easily find a messaging system and communicate
***
***Unless logged in, users should not be able to interact with the sites admin features***

**Feature:** Limited functionality without account

* User is not logged in
* Can only navigate products, no access to back end
* Because I don't want the site to be compromised

**Sceanrio:** User attempts to create a listing without an account

* User is not logged in
* User clicks the sell button
* Greeted with a login page

# Workflow

Below is the original workflow diagram.  This is how I originally intended the final site to look and feel when navigating.  When the website is finalised, an updated workflow will be introduced.

![Workflow Diagram](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/workflow.png "Workflow Diagram")

# Style Guide

Colours and Fonts that were selected for use in this project are shown below.

![Font Scheme](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/fontchoice.png "Font Scheme")

Looking at the top line, we have 'Bevan', which is a nice, crisp font family which will be implemented across all my headings, menu's and titles.  It's stand out appearance gives off an original look that draws the users attention towards it.  As my marketplace is focussing on natural produce from primary producers and growers - I felt this font was inkeeping with that target.

I then wanted to pair it with a clean, easy to read body text.  I chose 'Pontana Sans' for this.

![Colour Scheme](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/colourchoice.png "Colour Scheme")

Like with the font choice, I wanted to ensure the natural feel fell through to the colour scheme too.  This is why I've gone with shades of green for my content and content-holders and then baby blue to colour my background.

# Wireframes

My wireframes look quite like the finished product wth a few modifications.  Due to time constraints at the time, I was unable to deploy some features as I wished.  This will be rectified in the immediate future and I will update this doc at that time.

**Home Page:**

![Home Page Wireframe](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/Desktop_home.jpg "Home Page")

**Products List:**

![Product List Wireframe](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/Desktop_products.jpg "Product List")

**View Product:**

![View Product Wireframe](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/Desktop_productview.jpg "View Product")

**Messages:**

![Messages wireframe](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/Desktop_message.jpg "Messages")

**View Profile:**

![View Profile wireframe](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/Desktop_profile.jpg "View Profile")

**Login:**

![Login](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/Desktop_login.jpg "Login")

**Mobile View Product List:**

![Mobile Product List](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/chat_obile.jpg "Mobile Product List")

**Mobile View Product View:**

![Mobile View Product](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/Desktop_profile.jpg "Mobile View Product" )

# ERD

The scheme has grown since I designed this ERD.  Namely, we now have additional tables to facilitate the instant messaging function.  This created 3 tables to handle conversations and folders (housekeeping).

![ERD](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/erd.png "ERD")

# Trello Board

The live Trello board can be seen here: https://trello.com/b/R1Y4HQ3q/farm-to-table

![Trello Board](https://s3.us-east-2.amazonaws.com/farmtable/readme_assets/Screen+Shot+2018-05-10+at+19.16.35.png "Trello")
