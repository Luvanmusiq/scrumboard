class HomeController < ApplicationController
  def index
    @projects = Project.all
  end

  def projects
    redirect_to root_path
  end

  def stories
    redirect_to root_path
  end

  def temp
    redirect_to root_path
  end

end
