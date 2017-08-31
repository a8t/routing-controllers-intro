class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "welcome"
  end

  def about
    @header = "About!"
  end

  def contest
    flash[:notice] = "Sorry, the contest is over!"
    redirect_to('/welcome')
  end

  def set_kitten_url
    size = params[:size]
    @kitten_url = "http://lorempixel.com/#{size}/#{size}/cats"
  end

  def kitten
    @header = "Contest!"
  end

  def kittens
    @header = "Five kittens!"
  end

  def secrets
    @header = "Secret page!"
    if params[:magic_word] == "cats"
      redirect_to('/secrets')
    else
      flash[:notice] = "Not a valid page!"
      redirect_to("/welcome")
    end
  end
end
