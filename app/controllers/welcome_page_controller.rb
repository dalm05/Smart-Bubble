class WelcomePageController < ApplicationController
   #before_filter :authenticate_student_login!
   #before_filter :authenticate_department_login!
   #before_filter :authenticate_instructor_login!
  
  
  def index
    @student = student_login_signed_in?
    
    # transfer to appropriate page when authorize login or student login 
    if authorize_user_signed_in?
      
      if current_authorize_user.role == 'admin'
         redirect_to :controller => 'admin', :action => 'index'
      elsif current_authorize_user.role == 'department'
         redirect_to :controller => 'department', :action => 'index'
      elsif current_authorize_user.role == 'instructor'
         redirect_to :controller => 'instructor', :action => 'index'
      end
     elsif student_login_signed_in?
       redirect_to :controller => 'surveys', :action => 'index'
     else
    end
  end
  
  def show
   
  end
    
end
