class MenusController < ApplicationController
  def index
    @menus = Menu.order("category").order("id").all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(params[:menu])
    if @menu.save
      redirect_to @menu, :notice => "Successfully created menu."
    else
      render :action => 'new'
    end
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update_attributes(params[:menu])
      redirect_to @menu, :notice  => "Successfully updated menu."
    else
      render :action => 'edit'
    end
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to menus_url, :notice => "Successfully destroyed menu item."
  end
end
