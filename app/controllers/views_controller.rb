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
  end
  
  def show
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
  

end