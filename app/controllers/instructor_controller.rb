class InstructorController < ApplicationController
  before_filter :authenticate_authorize_user!
  
  def index
    #@title = "Welcome to Instructor page"
    redirect_to :controller => 'surveys', :action => 'index'
  end
  
end
