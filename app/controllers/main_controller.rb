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

  def special_workshops
    @workshops = Course.where(number_of_sessions: 1)
  end

  def upcoming_classes
     @workshops = Course.where(:start_date.future?)
  end

end
