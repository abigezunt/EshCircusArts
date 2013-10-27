class MainController < ApplicationController

  def index
  end

  def about
  end

  def location
  end
  
  def contact
  end

  def private_lessons
  end

  def instructors
    @instructors = User.where(instructor: true)
  end

  def workshops
    @workshops = Course.where(number_of_sessions: 1)
  end

  def upcoming_classes
    @courses = Course.all
    @sessions = SevenWeekSession.all
  end

  def disciplines
    @disciplines = Discipline.all
  end

end
