class UsersController < ApplicationController

  def index 
    @users = User.all 

  end

  def new
    @user = User.new
    puts 'I am at action "new"!'

  end

  def create
    @user = User.new(params[:user])
    @user.created_date = Time.now

    respond_to do |format|
      if @user.save
        format.html { redirect_to(users_path, :notice => 'User was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  
  end

end
