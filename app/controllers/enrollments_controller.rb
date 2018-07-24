class EnrollmentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    current_user.enrollments.create(course: current_course)
    redirect_to course_path(current_course)
  end
  
  private
  
  def current_course
    @current_course ||= Course.find(paramns[:course_id])
  end
end
