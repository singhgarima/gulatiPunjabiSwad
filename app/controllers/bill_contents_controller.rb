class BillContentsController < ApplicationController
  def edit
    @bill_content = BillContent.find(params[:id])
  end

  def destroy
    @bill_content = BillContent.find(params[:id])
    @bill_content.destroy
    redirect_to root_url, :notice => "Successfully destroyed bill content."
  end
end
