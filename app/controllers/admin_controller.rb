class AdminController < ApplicationController
  before_filter :authenticate_user!
  before_filter do 
    redirect_to :new_user_session_path unless current_user && current_user.admin?
  end

  def admin_index
  end

  def recent_registrations
  	@registrations = CourseRegistration.all(:order => 'created_at DESC')
  end

end
