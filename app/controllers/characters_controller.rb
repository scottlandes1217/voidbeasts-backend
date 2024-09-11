class CharactersController < ApplicationController
    def index
      characters = Character.all
      render json: characters
    end
  
    def show
      character = Character.find(params[:id])
      render json: character
    end
  
    def create
      character = Character.new(character_params)
      if character.save
        render json: character, status: :created
      else
        render json: character.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def character_params
      params.require(:character).permit(:name, :level)
    end
  end