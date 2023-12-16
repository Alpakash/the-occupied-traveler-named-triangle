# The Occupied Traveler named Triangle
Making an assignment which checks the occupation, travel info and whilst showing some cool triangles.

# Newly Downloaded and Installed tools I've never really used extensively/commercially before :)  
- Download and install
    - PHP 8.3.0
    - Composer
        - composer create-project laravel/laravel 
        - composer require laravel/breeze --dev
        - php artisan breeze:install
    - sqlite3
    - Inertia to couple Laravel with Vue 3
    - Pest (unit testing)
    - library: [FortAwesome/vue-fontawesome](https://github.com/FortAwesome/vue-fontawesome)
    - library: [@vueuse/motion](https://github.com/vueuse/motion)
    - Tailwind CSS
    - library: [vue-confetti-explosion](https://github.com/valgeirb/vue-confetti-explosion)

# Guidance and explanation
## Intro
I've made use of a lot of tools I was not really familiar with or which were a long time ago
since I've utilized them.

The app showcases my skills to create an full-fledged fullstack application which then is deployed.

I've created this app in 5 days, spending a few hours each, after working hours.

I hope you like the app which tells the story of a traveler named Triangle who is searching for a place to stay.

## Folder structure explained
There are many folders and files which are created by the Laravel Starters Kit boilerplate.
Reasons I did make use of this Starter Kit are:
1. Coupling Laravel and Vue was fairly new to me.
2. The official Laravel documentation is suggesting to make use of it (including Laravel Breeze to make it a breeze)
3. Life gets easier. So try to ignore the randomly or not used scaffolded files

- Resources folder and sub-folders
    - /js: where the components, types and pages live
        - /Components/Triangle: components used inside the Triangle Page
        - /Components/AssignmentComponents: components used inside all 3 pages
        - /Components/Pages/Cases: where the pages of the case live
        - /types: needed to add some types for a obscure typing error about vue.d.ts
    - /app.ts:
        - where the vue app is initiated with help of inertia.js 
        - loaded plugins
            - the animations with Motion
            - vuex store
            - font-awesome icons

- Routes
    - There are three routes where the Pages of the cases will live
        - /booking, /triangle and /travel

- Prerequisites
    - PHP
    - Laravel
    - sqlite3
    - vite

## How to install and run the app
        - yarn install
        - yarn dev
        - php artisan serve
        - the page can now be visited on localhost:8000

# Changelog
 - 11-11-2023, Day 1
    - Setup the repository
    - Installing the tools and software
    - Added Starters kit: Laravel, VueJs & InertiaJs 

 - 12-12-2023, Day 2
    - Added a dashboard
    - Added a footer to the dashboard with dynamic name
    - Added 4 stats to the dashboard without data
    - Made the Navigation links
    - Generated an AI vector smiley with a triangle nose
    - Created Welcome page with introduction texts
    - Added some rick roll
    - Added routes for the cases

- 13-12-2023, Day 3
    - Added CaseTitleHeader
    - Added MotionPlugin for component animations
    - Added confetti easter egg
    - Added sticky footer with 4 columns
    - Added sidebar with dummy text
    - Put Case Pages in their destined folder
    - Build the page with Adventurer Triangle
    - Added Footer icon
    - Added polygon according to the viewport

- 14-12-2023, Day 4
    - Added sidebar with interactions
    - Added typescript
    - Added VueX State
    - bug fix: header background color wasn't changing consistently onHover
    - added a logo to the Welcome page
    - Added content to the footer
    - Added content to the sidebar
    - Added some cat magic
    - Added the fake data inside roomDates.json
    - Made the Triangle page mobile responsive
    - Added datepicker library
    - Added all the crazy logic for the Booking page
        - Show all available or booked spots
        - Show the first booked spot in green
        - Added room location selector 

- 15-12-2023, Day 5
    - Add Guidance/explanation and backlog-list to the README file
    - Add reset button count button
    - styling of booking page: book a room title etc.
    - save the data for the user inside the database with vuex
    - Added vuex-persistedstate instead of using the state from the database
    - Got called in-between, without finishing this application... I got through to the next interview round! ;-)
    - Deploy the application to...
        - Tried to deploy via render.com
        - Tried to deploy via Vercel
        - Tried to deploy via Laravel Vapor
            - created database on Laravel Vapor -> Without success
            - created MySQL database on AWS to connect to Laravel Vapor production env
            - Setting up in AWS:
                - RDS Service
                - VPC Subnets en Security Groups
                - User role policies
                - Making use of Laravel Vapor production.env
        - failed to push to prod!
            - "AWS: Error occurred while DescribeSecurityGroups. EC2 Error Code: InvalidGroup.NotFound. EC2 Error Message: The security group 'sg-0aa448f79fef56bf6' does not exist", while I do have the VPC living in the correct region. Weird. I prefer GCP over AWS (because of not too many vague wordings for services and randomly thrown abbreviations). DONE.
    - Just used Laravel Vapor UI
            - Created VPC Network, Security Groups and Subnets
            - Created AWS RDS instance
            - Failed to get the "/" route working on prod, so.. no homepage!
            - The CSS files are not working and swimming around somewhere in an S3 bucket or assets folder somewhere
            - I'm happy to announce... the deployment has happened! Not perfect, but it's there... maybe the login won't work, maybe the css won't load, but.. it's there! Somewhere in the cloud of Laravel Vapor, with a RDS Database connected. The end.

    

<!-- 
backlog-list:
    - Triangle Page
        - make the images a circle and aligned correctly

    - Booking page
        - able to book room and cancel booking
        - form functionality, submit form on button click

    - Travel Kilometers page
        - Create the endpoints coupled against data in the laravel backend 
        - Fetch the endpoints in the frontend to show numbers
        - Explain the endpoints and why you choose to add those
        - User
            - make the mail verification functioning
            - show the user verification on the travel page underneath the endpoint data
-->

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects.

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>
