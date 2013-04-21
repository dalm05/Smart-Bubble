module WelcomePageHelper
  def resource_name
    :student_login
  end
 
  def resource
    @resource ||= Student_login.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:student_login]
  end
end
