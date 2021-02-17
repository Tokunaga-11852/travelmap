class ViewsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :view_id, only: [:edit, :show, :conditions, :update, :destroy]
  before_action :conditions, only: [:edit, :update, :destroy]

  def index
    @view = View.all.includes(:user).order("created_at DESC")
  end
  
  def new
    @view = View.new
  end
  
  def create
    @view = View.new(view_params)
    if @view.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end
  
  def show
  end

  def destroy
    if @view.destroy
      redirect_to root_path
    else 
      render :show
    end
  end

  def update
    if @view.update(view_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  private

  def view_params
    params.require(:view).permit(
      :title,
      :information,
      :address,
      :access,
      :shop,
      :opening_hours,
      :phone_number,
      :price,
      :image).merge(
        user_id: current_user.id)
  end
  
  def view_id
    @view = View.find(params[:id])
  end

  def conditions
    if current_user.id != @view.user_id
    redirect_to action: :index
    end
  end
end