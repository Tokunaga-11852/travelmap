class ViewsController < ApplicationController
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
    @view = View.find(params[:id])
  end
  
  def show
    @view = View.find(params[:id])
  end

  def update
    @view = View.find(params[:id])
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
  

end