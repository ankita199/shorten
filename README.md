# Basic App Setup

* git clone https://github.com/ankita199/shorten.git
* bundle install
* rake db:create
* rake db:migrate
* rails s 

# Job set up 

* whenever --update-crontab --set environment=development
* bundle exec whenever ( you can change 1.month to 1.minute and change any url created_at to (1.month.ago - 1.day) from backend)
* tail -f log/whenever.log  ( to view logs )

# change environment variable 

* EDITOR=pico rails credentials:edit (use any editor)

# Purpose

* This kind of app can be used when we want to short our big URLs and those URLs can be send in SMS/email or any can be given as a referer links. While clicking on short URLs it will redirect to original pages.
