# The Occupied Traveler named Triangle
Making an assignment which checks the occupation, travel info and whilst showing some cool triangles.

# Newly Downloaded and Installed tools I've never really used extensively commercially before :)  
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

# How to Install the application
    - yarn install
    - yarn dev
    - php artisan serve

# Guidance
    - The app lives inside the sub-folders inside the resources folder
        - js: where the components, types and pages live
        - app.ts: where the vue app is initiated with help of interia.js 
    - Routes
        - There are three routes where the cases will live
    
# Changelog
 - 12-12-2023
    - Added a dashboard
    - Added a footer to the dashboard with dynamic name
    - Added 4 stats to the dashboard without data
    - Made the Navigation links
    - Generated an AI vector smiley with a triangle nose
    - Created Welcome page with introduction texts
    - Added some rick roll
    - Added routes for the cases

- 13-12-2023
    - Added CaseTitleHeader
    - Added MotionPlugin for component animations
    - Added confetti easter egg
    - Added sticky footer with 4 columns
    - Added sidebar with dummy text
    - Put Case Pages in their destined folder
    - Build the page with Adventurer Triangle
    - Added Footer icon
    - Added polygon according to the viewport
    

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>
