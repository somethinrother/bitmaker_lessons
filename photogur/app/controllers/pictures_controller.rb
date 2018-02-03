class PicturesController < ApplicationController
  before_action :ensure_logged_in, except: [:show, :index, :years_index]
  before_action :load_picture, only: [:show, :edit, :update, :destroy]
  before_action :ensure_user_owns_picture, only: [:edit, :update, :destroy]

  def load_picture
    @picture = Picture.find(params[:id])
  end

  def ensure_user_owns_picture
  unless current_user == @picture.user
    flash[:alert] = "Please log in"
    redirect_to new_session_url
  end
end

  def index
    @new_pictures = Picture.created_less_than_a_month_ago
    @old_pictures = Picture.created_more_than_a_month_ago
    @all_years    = Picture.all_years
  end

  def years_index
    @pictures = Picture.created_in_year(params[:year])
    render :years_index
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    @picture.title  = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url    = params[:picture][:url]

    if @picture.save
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit
    end
  end

  def create
    @picture = Picture.new

    @picture.title  = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url    = params[:picture][:url]
    @picture.user   = current_user

    if @picture.save
      redirect_to "/pictures"
    else
      render :new
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to '/pictures'

  end

end
