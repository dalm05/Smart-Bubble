class DepartmentController < ApplicationController
  before_filter :authenticate_authorize_user!
  
  def index
    @title = "Department Page"
  end
end
