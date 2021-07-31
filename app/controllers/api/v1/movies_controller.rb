class Api::V1::MoviesController < ApplicationController
    #skip_before_action :authorized, only: [:index]

    def index 
        movies = Movie.all 
        
        render json: MovieSerializer.new(movies)
    end

    def create
        movie = Movie.new(movie_params)
        if movie.save
            render json: MovieSerializer.new(movie), status: :accepted
        else
            render json: {errors: movie.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update
        @movie = Movie.find(params[:id])
        @movie.update(movie_params)

        render json: MovieSerializer.new(movies)
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.delete

        render json: MovieSerializer.destroy(movies)
    end

    private 

    def movie_params
        params.require(:movie).permit(:title, :release_year, :description, :image_url, :starring_actors, :genre_id)
    end
end
