class Api::V1::GenresController < ApplicationController

    def index 
      categories = Genre.all 
      render json: GenreSerializer.new(genres)
    end
  
  
  end