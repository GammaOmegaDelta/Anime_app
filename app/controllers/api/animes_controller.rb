class Api::AnimesController < ApplicationController
  def index
    @animes = Anime.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @anime = Anime.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @anime = Anime.new(
      title: params[:input_title],
      description: params[:input_description],
      genre: params[:input_genre],
      )
    @anime.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @anime = Anime.find_by(id: the_id)
    @anime.update(
      title: params[:input_title],
      description: params[:input_description],
      genre: params[:input_genre],
      )
    render 'show.json.jbuilder'
  end

  def destroy
    the_id = params[:id]
    @anime = Anime.find_by(id: the_id)
    @anime.destroy
    render 'show.json.jbuilder'
  end
end