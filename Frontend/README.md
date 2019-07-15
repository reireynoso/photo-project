# Photo Uploader
Users are able to upload photos from their computers. User are able to view other photos generated as well as comment, edit, and delete photos. 

## Getting Started
First, fork and clone this repo. There are two repositories that will need setup, front-end and back-end.Change directory into Backend. 

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

Once the Ruby on Rails has been setup and installed, run 'bundle install', 'rails db:create', 'rails db:migrate', and 'rails db:seed', 'rails server' seqentially on your terminal to get the rails api started.


### Running the App
Once the rails server is running, cd into the Frontend directory and open the index.html with a default browser.

## Built With
Ruby on Rails - The api server used
Materialize - CSS library used
Javascript/HTML - front-end manipulation


## Authors
Reinald Reynoso - Initial Work


## Acknowledgments
* Flatiron School