class VatsController < ApplicationController
  def index
    @vats = Vat.all
  end

  def show
    @vat = Vat.find(params[:id])
  end

  def new
    @vat = Vat.new
  end

  def create
    @vat = Vat.new(params[:vat])
    if @vat.save
      redirect_to @vat, :notice => "Successfully created vat."
    else
      render :action => 'new'
    end
  end

  def edit
    @vat = Vat.find(params[:id])
  end

  def update
    @vat = Vat.find(params[:id])
    if @vat.update_attributes(params[:vat])
      redirect_to @vat, :notice  => "Successfully updated vat."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @vat = Vat.find(params[:id])
    @vat.destroy
    redirect_to vats_url, :notice => "Successfully destroyed vat."
  end
end
