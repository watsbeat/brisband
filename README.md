# Brisband

What is BrisBand?  BrisBand is a community-driven marketplace for local Brisbane musicians to discuss and to buy and sell their used equipment. 
BrisBand centralises interactions (e.g. opinions given on forums re instruments & recording gear, sale/borrowing of music equipment etc.) that already occur across a multitude of platforms, so that trade is a social and organic experience.

In the future we have big plans for BrisBand, we would like to add more to the site including; a venues page that will give all upcoming gigs and rehearsal spaces you can rent out or possible perform at. We’d also like to add a band page function, as to then have local bands and their instruments and a bio for each member.

#### Heroku link to Brisband
    - https://sheltered-plains-31321.herokuapp.com/home/index
#### Link to Brisband Github Repo
    - https://github.com/kieran-lockyer/brisband
    
## Problem definition / purpose
    Currently there is no single community that provides a venue wide-ranging discussions on gear, bands and gigs. Brisband aims to address this gap by creating an all-in-one community driven marketplace/social network/discussion forum.

## Functionality / features
    Users can create an account, with which they can:
        - Advertise gear that they use, and may be looking to sell.
        - Discuss gear with other Brisbane based musicians
        - Send private messages to one another.
        - Advertise their bands, including the gear each band memeber uses.

## Screenshots (of application)

## Tech stack (e.g. html, css, deployment platform, etc)
    - Ruby
    - Ruby on Rails
    - HTML
    - SCSS
    - Javascript
    - Heroku
    - Cloudinary
    - Stripe
    - PostgresQL

## Instructions on how to setup, configure and use your App.
    - Our app is deployed on Heroku. All that needs to be done to gain full funcionality on our app is to create an account, which can be done on any page of the site by clicking the Sign Up button in the top right.
    - Once signed in, there are clearly labeled navigation links which can direct users around the entire site, including creating posts, commenting, creating a band, and private messaging.

# Design Documentation
## Design process
    - We began our design process by defining the scope of our app, in terms of features that would be completed by the end of the project, as well as stretch goals for future add-ons.
    - Once we defined the scope, we broke each feature down into user stories which allowed us to weed out bad ideas, and adjust others accordingly.
    - We then created an entity relationship diagram to design how different components should interact, and how we would structure the app design.
    - We created detailed wireframes to help with designed the user workflow, and what information we should present on each page.
    - Finally we created a user workflow diagram to finalise the path in which users would take to reach each page.

## User stories
    As a user, I can:
    - Log in/out
    - Delete my account
    - Create an item-post with a description and multiple photos
    - CRUD my own band-page
    - Edit my item-posts
    - Delete my item-posts
    - View any item-post
    - View a list of item-posts
    - View a list of bands
    - Comment on any item-post (including my own)
    - CRUD my own comments on other's item-posts
    - Flag an item-post or comment
    - Reset my password

    As anonymous, I can:
    - Register an account
    - View any item-post, including comments
    - View a list of item-posts
    - View a list of bands
    - View any band-page

    As site-admin, I can:
    - Delete any item-post or comment or user
    - Delete any band-page
    - View a list of flagged item-posts
    - Unflag an item-post or comment

## A workflow diagram of the user journey/s.

## Wireframes

## Database Entity Relationship Diagrams

### Site map

# Details of planning process including,

## Project Overview
### Plan
    - Our first initiative as a group was to plan out the scope of our app, and define a timeframe to which we would meet certain goals. Firstly we planned out all the features and user stories for our app. That provided us with a great amount of detail as to how long each aspect would take to implement.
    - Based off of this, and the project deadline, we worked backwards to create checkpoints at which each portion of the project would need to be completed.
    - We decided to give ourselves a full day on the Thursday before we submitted the project to create our presentation. This meant that the app would need to be completed by Wednesday in the 2nd week at the latest.
    - As styling was not part of the assessment criteria, we decided to leave that as an optional task if we were able to complete the full functionality of our apps MVP during the first week. We were able to meet that goal which left us with Monday and Tuesday of the 2nd week to add some styling as per our original timeline plan.
    - We decided that Wednesday of the second week should be dedicated to compiling the documnetation and answering the short answers section of the project.
    
### Timeline
   #### Week 1
        Monday
            Project planning
            Setting up Trello boards
            Creating Github Workflow
            Wireframing
            Creating ERD
            Scoping project
            Creating User Stories
        Tuesday -Wednesday
            Creating Models, Views and Controllers
            Deploy to Heroku
        Thursday - Friday
            Installing 3rd party gems
            Testing with RSpec
            Creating database relationships
            Configuring views and controllers to implement full funtionality of the planned features
   #### Week 2
        Monday - Tuesday
            Styling with Materialize
            Refining and fixing bugs that were discovered through testing
        Wednesday
            Documentation
            Styling with Materialize
            Refining and fixing bugs that were discovered through testing
        Thursday
            Creating presentation
            Final touches on app, minor modifications to configure Heroku.
        Friday
            Submission
            Presentation

## Screenshots of Trello board(s)

# 2.2 Requirements - Short Answer Questions
### To demonstrate your knowledge you are required to answer a set of short questions. In your README.md file create a heading for each of the questions below and provide answers inline,

1. What is the need (i.e. challenge) that you will be addressing in your project?
    - Currently there is no single community that provides a venue wide-ranging discussions on gear, bands and gigs.

2. Identify the problem you’re trying to solve by building this particular marketplace App?
Why is it a problem that needs solving?
    - Currently there are multiple platforms to sell equipment on, although none are community focused or have been developed for musicians. It's a problem that needs solving as it leaves musicians unsure of where to go to find critical information.

3. Describe the project will you be conducting and how. your App will address the needs.
    - Brisband aims to address this gap by creating an all-in-one community driven marketplace/social network/discussion forum.

4. Describe the network infrastructure the App may be based on.
    - Our app is deployed on Heroku, which is a cloud based Platfrom as a Service (PaaS) provider. Heroku handles the application servers, databases, web servers and firewalls to monitor traffic and unusual events. Once a user has been routed to Heroku by their ISP, Heroku handles the smooth operation of our web app such as load balancing, databse queries etc. 

5. Identify and describe the software to be used in your App.
    - Ruby on rails and default gems. It provides the necessary structure and plugins to enable our features to be implemented.

    - Our third party software we are using are Postgres, Stripe, Cloudinary, Materialize and Heroku.
    Heroku was our deployment site alongside Cloudinary for storing images.
    And lastly the Stripe component is for the payment systems for user to user payments 
    Postgres was used for our database
    Materialize was used for styling

6. Identify the database to be used in your App and provide a justification for your choice.
    - We are using Postgres as we have deployed our app on Heroku. Heroku does not support the native sqlite3 which comes by default on Ruby on Rails. We also used Postgres as we have more experience with being able to view and query the tables created by our schema. Lastly it is a requirement of this assignment.

7. Identify and describe the production database setup (i.e. postgres instance).
    - Our Postgres database is being utilized to store the following:
        - User accounts and their details
        - Items(posts) including an image and description
        - Comments which will be made on the item-posts
        - Bands that the users belong to
        - User roles which define the access they have on the site
        - Conversations (Private messages) and their sender, recipient and content
        - Active Storage associations between users, items, bands and their images.

8. Describe the architecture of your App.
    - Built upon the Rails framework, the BrisBand web-application will provide a user the ability to log-in to the app, where they will be given the ability to make posts of their equipment, leave comments on other users's posts, create a band, and directly message other users. The user's profile photo, images on posts and band pages will be stored on the external service Cloudinary, to ensure the images will be easily available. The site will be navigable via a simple link bar at the top, which also displays quick access to the user's profile, and notifications if the user has any direct messages. There is an admin feature that enables any user to flag a comment or item as inappropriate, which will then appear on the admin user's dashboard for review.

9. Explain the different high-level components (abstractions) in your App.
    - Users
        - Users are defined through the Devise gem and are the highest-level model in our app. All other components branch off of Users. A user model is used to define where a user can navigate to and interact with various aspects of the web app.
    - Roles
        - Roles is a model that is associated with a user to define what level of access they have to various components of the web app such as admin view and deleting items and comments.
    - Item
        - Items are a model that contains information about a users gear. They can be posted to the items index, and are also shown on bands pages.
    - Comments
        - Comments are a model that is directly associated with an Item post. They can only be viewed in the Item show page.
    - Bands
        - Bands are a model that have many users(members). THe band model retrieves information about each user in a band and their associated items and display them on the bands show page.
    - Conversations
        - Conversation are a series of models that connect through the Mailboxer gem. They are associated between a sender and recipient and enable private messaging through our web app.
    - Images
        - Images are associated with users, bands and items through the Active Storage componenet of Ruby on Rails and their blobs are stored in the cloud with the Cloudinary gem.


10. Detail any third party services that your App will use.
    - We used the following Ruby gems with their functionality respectively:
    - gem "devise", "~> 4.5"
        This handles the initial user authentication fucntionality; creating accounts, logging in and out.

    - gem "rolify", "~> 5.2"
        This gives roles for the users, where authorization can be implemented in the code to allow admins to delete items and comments etc.

    - gem "stripe", "~> 3.28"
        This is the payment feature, connected to items flagged as for sale, users can click the 'buy now' button, where they create a Stripe account and make a payment which is sent to the site.

    - gem "cloudinary", "~> 1.9" and gem "activestorage-cloudinary-service", "~> 0.2.0"
        Cloudinary is the remote storage service for images, so they can be accessed reliably whenever the site calls images to be rendered. Activestorage provides the link betweent the app models and the images in Cloudinary's database.

    - gem 'mailboxer'
        For direct messages between users, you can select the user you wish to send a message, give a title to the message and a body. The recieving user will be notified and can respond. Conversations can be carried out between different users simultaneously, and are listed on the conversations page accessible through the main navigation bar.

    - gem 'materialize-sass'
        For styling our web app. Materialize has a library of scss and javascript components which greatly reduce the time involved in adding style to the website.

    - gem 'pg'
        For utilizing PostgresQL database for storing our models and associated attributes.

    - gem 'rspec-rails'
        Rspec provides a suite of testing tools in order for us to utilize test driven development.

11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).
    - Bandmix: The similarities shared by this site are the creation of a user account and profile, direct messages between users, in a community of musicians. The differences are interaction via a forum instead of item-posts, and a focus on making bands and musical projects, as opposed to our focus on the equipment.
    Bandmix's data structure models for Users and Bands. Users have instruments and other various data related to when, where and what they play. Bands have information relating to what they seek in new musicians.

12. Discuss the database relations to be implemented.
    - Active Record handles associating images with users, items and bands.
    - Mailboxer handles associating conversations with users
    We also have two joining tables, one for linking users to bands, and the other for linking users to roles.
    
13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
    - Users:
        - Have many roles, bands, items and comments.
        - Have one mailbox - Not stated in the user_model, handled by Mailboxer
        - Has one attached image
    - Items:
        - Have many comments
        - Belongs to a user.
        - Has many attached images
    - Comments:
        - Belongs to an item and a user.
    - Bands:
        - Have many users.
        - Has many attached images
    - Roles:
        - Has and belongs to many users

14. Provide your database schema design.
    ERD

15. Provide User stories for your App.
    As a user, I can:
    - Log in/out
    - Delete my account
    - Create an item-post with a description and multiple photos
    - CRUD my own band-page
    - Edit my item-posts
    - Delete my item-posts
    - View any item-post
    - View a list of item-posts
    - View a list of bands
    - Comment on any item-post (including my own)
    - CRUD my own comments on other's item-posts
    - Flag an item-post or comment
    - Reset my password

    As anonymous, I can:
    - Register an account
    - View any item-post, including comments
    - View a list of item-posts
    - View a list of bands
    - View any band-page

    As site-admin, I can:
    - Delete any item-post or comment or user
    - Delete any band-page
    - View a list of flagged item-posts
    - Unflag an item-post or comment

16. Provide Wireframes for your App.
    wireframes

17. Describe the way tasks are allocated and tracked in your project.
    We had a group meeting at the outset of the project to define major responsibilites such as managing github master repo, taking screenshots of our progress etc.
    Our group utilized slack, trello and github in order to maintain smooth workflow between members of our team. We had daily standup meetings to inform other members what we were working on and what we were stuck on.
    We defined user stories as cards on Trello, and when we completed a task, we would move it up the chain of to do, in progress, needs review and done, and then take the nect unassigned Trello card, assigning ourselves for team visibility.

18. Discuss how Agile methodology is being implemented in your project.
    We defined a comprehensive list of user stories at the outset and planned how we would implement those features. The course of the project is basically a 2 week code sprint, in which we held daily standup meetings to advise what we were working on, and pivot as necessary. We worked on one small discrete feature at a time, then would have another team member review and test before merging. This greatly helped our teamwork and minimised regressions as we added features.

19. Provide an overview and description of your Source control process.
    We utilised github to maintain a single source of truth for our deployed web app.
    Each member of the team developed individual features in a unique feature branch, which once completed would be merged into the master via a pull request from the feature branch after review by another team member.

20. Provide an overview and description of your Testing process.
    We utilized two main methods of testing our app with each new pull request.
    First was a user workflow simulation where a member of the team would manually test the functionality locally, checking for any unexpected behaviour.
    Secondly we utilized R-Spec to complete unit tests on each individual method, controller, and route to ensure complete functionality.

21. Discuss and analyse requirements related to information system security.
    We have many considerations when it comes to information security as we are handling personal identifiable information, as well as emails and passwords, and financial information for processing payments. We need to make sure we are creating secure paths for login and logout, and also no releasing any sensitive information on any of our pages. Finally we need to sanitize our user inputs to protect against things like SQL injection attacks.

22. Discuss methods you will use to protect information and data.
    We used devise as a method of creating users. Devise has inbuilt functions that transorm plaintext input for passwords into salted and hashed passwords to be stored in our database.
    We also used stripe to handle credit card transactions to ensure security of financial information.
    We also used private params functions in each controller to sanitize the user input.

23. Research what your legal obligations are in relation to handling user data.
    In our research we came across the Privacy Act 1988, which states that in the case of user information being stored such as an email address or full name, there must be a privacy policy and or website disclaimer stating how the information is to be used. 
    We have added a legal tab to the website in the navigation bar which covers all aspects of our obligations under the act. 
    We also considered implacations of GDPR in the EU, however as our site is aimed at Brisbane locals, we do not anticipate having any users whom which these laws would apply. 
