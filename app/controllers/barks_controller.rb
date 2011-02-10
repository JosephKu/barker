class BarksController < ApplicationController

  def index
    @barks = Bark.all

  end

  def new
    @bark = Bark.new

  end

  def create
    @bark = Bark.new(params[:bark])

    respond_to do |format|
      if @bark.save
        format.html { redirect_to barks_path }
      else
        format.xml { render :action => "new" }
      end
    end

  end

end
