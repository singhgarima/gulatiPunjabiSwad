class HomesController < ApplicationController

  def undefined
    render "public/404.html"
  end

  def users
    @users = User.all
  end

end
