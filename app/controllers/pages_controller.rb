class PagesController < ApplicationController

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
    size = params[:size]
    @kitten_url = "http://lorempixel.com/#{size}/#{size}/cats"
    render :kitten
  end

end
