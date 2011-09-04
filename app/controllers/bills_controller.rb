class BillsController < ApplicationController
  def index
    @bills = Bill.all
  end

  def show
    @bill = Bill.find(params[:id])
  end

  def new
    @menus = Menu.all
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(params[:bill])
    if @bill.save
      redirect_to @bill, :notice => "Successfully created bill."
    else
      @menus = Menu.all
      render :action => 'new'
    end
  end

  def edit
    @bill = Bill.find(params[:id])
  end

  def update
    @bill = Bill.find(params[:id])
    if @bill.update_attributes(params[:bill])
      redirect_to @bill, :notice  => "Successfully updated bill."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy
    redirect_to bills_url, :notice => "Successfully destroyed bill."
  end
end
