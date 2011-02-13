Barker
======

A practice Twitter-like project for Rails.


Notes for Ruby Hack Day V
-------------------------

* Create new actions in **Users** controller: ***login***, ***process_login*** and ***logout***


* The form in **login.html.erb**

        <%= form_for(@user, :url => { :action => "process_login" }) do |f| %>


* Practice how to use **'session'**
  * In ***process_login*** action:

        `session[:id] = user.id`

  * In ***logout*** action:

        `reset_session`


* Create a method, ***authenticate***, in **User** model for simplifying the code in the controller

        def self.authenticate(user_info)
          find_by_name_and_password(user_info[:name], user_info[:password])
        end


* config/routes.rb

        root :to => "barks#index"



Notes for Ruby Hack Day IV
--------------------------

* Add status updating page

        $ rails generate model Bark status:string
        $ rake db:migrate
        $ rails generate controller Barks new


* Try ***belongs_to*** and ***has_many***
  * Bark ***belongs_to*** User
  * User ***has_many*** Barks


* Create *&lt;select&gt;* tag by `collection_select(:bark, :user_id, User.all, :id, :name)`


* We still need to add ***user_id*** to make Bark ***belongs_to*** User

        $ rails generate migration AddUserIdToBarks user_id:integer
        $ rake db:migrate


* Try ***bark.user.name*** to feel the magic of Rails!



Notes for Ruby Hack Day II
--------------------------

* Start a Rails app

        $ rails new barker
        $ rails generate model User name:string email:string fullname:string password:string created_date:timestamp
        $ rails generate controller Users new index


* Create the database for your Rails app. Please refer the list by ***'$ rake -T'***

        $ rake db:setup

  Or

        $ rake db:migrate


* config/routes.rb

        resources :users
        root :to => "users#new"

* Seperate your form by

        <%= render 'form' %>

  and create a new .erb file called **\_form.html.erb**


* What's the difference between ***redirect_to*** and ***render***? 



Help and Documenations
----------------------

* [Ruby Hack Day Google Group Discussion](http://groups.google.com/group/ruby-hack-day)



