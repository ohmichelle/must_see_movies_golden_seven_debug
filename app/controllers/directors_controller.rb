class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    #Parameters: {"id"=>"1"}
    @director = Director.find(params["id"])
  end

  def new_form
  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show.html.erb")
  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])

    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show.html.erb")
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end
end
