class RationsController < ApplicationController
  def index
    @rations = Ration.all
  end

  def show
    @ration = Ration.find(params[:id])
  end

  def new
    @ration = Ration.new
  end

  def create
    @ration = Ration.new(params[:ration])
    if @ration.save
      redirect_to @ration, :notice => "Successfully created ration."
    else
      render :action => 'new'
    end
  end

  def edit
    @ration = Ration.find(params[:id])
  end

  def update
    @ration = Ration.find(params[:id])
    if @ration.update_attributes(params[:ration])
      redirect_to @ration, :notice  => "Successfully updated ration."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @ration = Ration.find(params[:id])
    @ration.destroy
    redirect_to rations_url, :notice => "Successfully destroyed ration."
  end
end
