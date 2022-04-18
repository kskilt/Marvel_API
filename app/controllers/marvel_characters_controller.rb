class MarvelCharactersController < ApplicationController
  before_action :current_marvel_character, only: [:show, :edit, :update, :destroy]
  def index
    @marvel_characters = MarvelCharacter.all
  end

  def show
  end

  def new
    @marvel_character = MarvelCharacter.new
  end

  def create
    marvel_character = MarvelCharacter.create(marvel_character_params)

    redirect_to marvel_character_path(marvel_character)
  end

  def edit
  end

  def update
    @marvel_character.update(marvel_character_params)

    redirect_to marvel_character_path(@marvel_character)
  end

  def destroy
    @marvel_character.destroy

    redirect_to marvel_characters_path
  end

  private

  def marvel_character_params
    params.require(:marvel_character).permit(:name)
  end

  def current_marvel_character
    @marvel_character = MarvelCharacter.find(params[:id])
  end
end
