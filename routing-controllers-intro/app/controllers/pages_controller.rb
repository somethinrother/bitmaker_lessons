class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is the welcome page!"
  end

  def about
    @header = "About us!!!"
  end

  def contest
    flash[:notice] = "Our kitty competition has ended!"
    redirect_to welcome_path
  end

  def kitten
    params[:size]
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    unless params[:magic_word] == "goober"
      flash[:alert] = "You didn't say the magic word!"
      redirect_to welcome_path
    end
  end

end
