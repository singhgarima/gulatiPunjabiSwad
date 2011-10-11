class BillsController < ApplicationController

  def index
    @bills = Bill.all
  end

  def show
    @bill = Bill.find(params[:id])
  end

  def new
    @menus = Menu.order("category").order("id").all
  end

  def create
    @bill = Bill.new(params[:order][:name])
    order = params["order"]
    order_keys = order.keys.collect{|key| key if key.match(/^o[\d]+$/).present? }
    bill_contents = []
    order_keys.each do |order_key|
      bill_contents << BillContent.new(:menu_id => order[order_key][:menu], :quantity => order[order_key][:quantity]) if order_key
    end

    if @bill.save
      p bill_contents
      @bill.bill_contents = bill_contents
      @bill.save
      p @bill.bill_contents
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

  def print
    @bill = Bill.find(params[:bill_id])
    render :layout => 'print_layout'
  end

  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy
    redirect_to bills_url, :notice => "Successfully destroyed bill."
  end

end
