class AdminController < ApplicationController
  before_filter :authenticate_authorize_user!
  
  def index
    @title =" Welcome to Adminstrator Page"
  end
end
