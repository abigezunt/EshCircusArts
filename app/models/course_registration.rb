class CourseRegistration < ActiveRecord::Base
  belongs_to :user
  belongs_to :registerable, polymorphic: true, counter_cache: true
  scope :current, -> { where("'course.start_date' > ?", Date.today)}
  before_validation :create_sub_registrations
  validates :role, inclusion: { in: %w(student instructor)}

  def self.check_out(user)
    unpaid_reg = user.course_registrations.where(paid: nil)
    unpaid_reg.each do |reg|
      reg.paid = true 
      reg.save
    end
  end

  def create_sub_registrations
    if self.registerable_type == "SevenWeekSession"
      self.registerable.courses.each do |course|
        CourseRegistration.create(user_id: self.user_id, role: self.role, paid: self.paid, sub: true, registerable_id: course.id, registerable_type: "Course", price: nil, comments: self.comments)
      end
    end
  end

  def name
    registerable.name
  end

  def is_full_registration
    self.price
  end
  
end
