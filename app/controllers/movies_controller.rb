class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    #Parameters: {"id"=>"1"}
    @movie = Movie.find(params["id"])
  end

  def new_form
  end

  def create_row
    #Parameters: {"title"=>"", "year"=>"", "duration"=>"", "description"=>"", "image_url"=>"", "director_id"=>"1"}
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

    @movie.save

    render("show.html.erb")
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    #Parameters: {"title"=>"", "year"=>"", "duration"=>"", "description"=>"", "image_url"=>"", "director_id"=>"1"}
    @movie = Movie.find(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

    @movie.save

    render("show.html.erb")
  end

  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy
  end
end
