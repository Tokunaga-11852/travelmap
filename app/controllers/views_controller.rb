class ViewsController < ApplicationController
  def index
    @view = View.all.includes(:user).order("created_at DESC")
  end
end

def new
  @view = View.new(view_params)
end