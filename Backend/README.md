# Photo Uploader API

Photo Uploader is an app for uploading images from your computer. Users are able to view other photos generated as well as comment, edit, and delete photos. This project was developed as Flatiron School's Mod 3 assignment in JavaScript. It uses vanilla JavaScript for frontendand Rails backend. Cloudinary was utilized as third party storage system for photos.

## Getting Started
First, fork and clone this repo. Change directory into Backend. 

### Prerequisites
Ruby and Rails and Postgresql have to be installed on your computer. 

* If it is not installed, start by going in your terminal, and type:

brew install rbenv ruby-build

### Install Ruby
rbenv install 2.6.2
rbenv global 2.6.2
ruby -v (to verify)

### Install Rails
gem install rails -v 5.2.3
rails -v (to verify)

### Install Postgresql
brew install postgresql

Once the Ruby on Rails has been setup and installed, run 

bundle install 
rails db:create 
rails db:migrate 
rails db:seed 
rails server 

seqentially on your terminal to get the rails api started.

## Built With
Ruby on Rails - The api server used

## Authors
Reinald Reynoso

## Acknowledgments
* Flatiron School