class BillContentsController < ApplicationController

  def menus
    @menus = Menu.all
  end
end
