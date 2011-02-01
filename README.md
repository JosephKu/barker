Barker
======

A practice Twitter-like project for Rails.


Notes for Ruby Hack Day II
--------------------------

* Start a Rails app

        $ rails new barker
        $ rails generate model User name:string email:string fullname:string password:string created_date:timestamp
        $ rails generate controller Users new index


* Create the database for your Rails app. Please refer `$ rake -T`

        $ rake db:setup

  Or

        $ rake db:migrate


* config/routes.rb

        resources :users
        root :to => "users#new"

* Seperate your form by

        <%= render 'form' %>

  and create a new .erb file called `_form.html.erb`


* What's the difference between `redirect_to` and `render`? 



Help and Documenations
----------------------

* [Ruby Hack Day Google Group Discussion](http://groups.google.com/group/ruby-hack-day)



