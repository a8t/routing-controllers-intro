class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "welcome"
    render :welcome
  end

  def about
    @header = "About!"
    render :about
  end

  def contest
    @header = "Contest!"
    render :contest
  end

  def kitten
    @header = "Contest!"
    render :kitten
  end

  def kittens
    @header = "Five kittens!"
    render :kittens
  end

  def set_kitten_url
    size = params[:size]
    @kitten_url = "http://lorempixel.com/#{size}/#{size}/cats"
  end
end
