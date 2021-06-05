class MoviesController < ApplicationController
  before_action :find_movie, only: [ :show ]

  def index
    @movies = Movie.all
  end

  # Our app will not allow users to create movies
  # Instead, we will generate a static seed of movies to choose from

  def show
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
