# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Roadblocks encountered

Fetch gets blocked in Chrome
Had to follow workaround at https://www.stackhawk.com/blog/rails-cors-guide/ to enable CORS. Remember to add gem 'rack-cors' in the Gemfile.

ActionController::InvalidAuthenticityToken
This happened when sending POST requests.
The solution was to add
skip_before_action :verify_authenticity_token
to the application controller.
https://dev.to/ben/actioncontroller-invalidauthenticitytoken-what-s-going-on-here-2828
