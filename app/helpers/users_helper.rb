module UsersHelper
  def show_classes
  	self.course_registrations.where(role: "teacher").pluck(:course).do each |course|
      "#{ link_to course.name, course }".html_safe
    end
  end
end
