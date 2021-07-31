class Api::V1::MoviesController < ApplicationController
    def index
        @movies = Movie.all
    
        render json: @movies
      end
    
      def show
        @movie = Movie.find(params[:id])
    
        render json: @movie
      end
    
      def create
        @movie = Movie.create(movie_params)
    
          render json: @movie
      end
    
    
      def update
        @movie = Movie.find(params[:id])
        @movie.update(movie_params)
    
          render json: @movie
      end
    
      def ratings
        @movies = Movie.grouped_ratings #gives access to scope method
      end
    
      def destroy
        @movie = Movie.find(params[:id])
        @movie.delete
    
        render json: {movieId: @movie.id}
      end
    
      private
      def movie_params
        params.require(:data).permit(:title, :release_year, :description, :image_url, :starring_actors, :genre_id)

      end
    end

