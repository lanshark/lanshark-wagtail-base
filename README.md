WagPress Project
================

The goal of the WagPress project is to build a suitable competitor to WordPress,
using fully supported components of the Wagtail Content Management System.

We believe Wagtail is a superior CMS, and just needs an easier install/setup
process, lots of plugins, themes, and similar ideas to compete favorably with
WordPress as a platform, while avoiding the issues that plague WordPress
(security, unsupported plugins, poor testing, etc).

Initially, we're focusing on pulling in 'best of breed' wagtail applications.
We're importing them under the "WagPress" banner so that we can guarantee
full commercial support as we move forward.

Here are some of the projects goals and aspirations to get you inspired!

Wagtail CMS Design
------------------

"Default" Page Types:

    Home Page with Snippets for blog, advertising, etc.
    About Us
    Products or Services
    Portfolios
    Events and Event Calendars
    Contact Us Form
    References
    Testimonials
    Full Function Blog

And some features we'd like to implement:

    SEO - Alt Tags, Titles, Keywords, Sitemap, Content
    Taxonomy and AutoMenu Generate
    Ease of Installation - ansible/cookiecutter/Docker/Heroku one button
    Installable Themes - need BootStrap 4, and published docs
    Great End User Documentation
    Ecommerce - integrate with shopify, saleor, and/or shuup
    Social Media Marketing Support and Integration
    Lots of Common Plugins, fully supported

Here's our initial task list (in no particular order):

    convert to pipenv
    Make Custom favicon.ico
    Add Robot.txt
    Convert Search to use Postgres Backend
    Figure out how to do Themes
    Add Customizable Error Pages
    Convert to Generated Menus
    Add Testing via Pytest, FactoryBoy
    Consider adding file previews
    Add Embedded Videos
    Implement Wagtail Media Manager
    Implement Personalization
    Implement A/B Testing
    Implement Feature Flags
    Implement UWKM Streamfields
    Implement Wagtail Feeds
    Update FontAwesome to 5.0.6 or greater
    Update Dependencies
    Abstract this into installable components
    Implement Custom CSS
    Convert to Gunicorn with SystemD
    convert to .env
    Integrate with Shopify, SaLeor or Shuup for eCommerce
    Integrate Puput
    Integrate with Mailing List (Marketing and Transactional)
    Implement Event Calendar
    Implement Reminder System
    Implement Wishlist
    Implement Scheduler App
    Integrate Vue.JS for better frontend experience
    Integrate Google Analytics
    Make this a CookieCutter
    Implement Fabfile for Deploy/Automate
    Automate Server Setups with Ansible
    Create a "Push to Production" Button
    Integrate More Block Options
    Create Projects/Portfolio App

Copyright, 2018, LANshark Consulting Group, LLC.  All Rights Reserved.

