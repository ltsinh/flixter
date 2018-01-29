class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_current_course_enrollment, only: [:show]

  def show
  end

  private

def require_current_course_enrollment
  if !=current_user.enrolled_in?(current_lesson.section.course)
    redirect_to course_url (current_lesson.section.course), alert: 'Enrollment is required to enter this course.'
  end
end

helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
