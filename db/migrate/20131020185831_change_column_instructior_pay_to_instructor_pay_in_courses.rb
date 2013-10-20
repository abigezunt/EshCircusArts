class ChangeColumnInstructiorPayToInstructorPayInCourses < ActiveRecord::Migration
  def change
  	rename_column :courses, :instructior_pay, :instructor_pay
  end
end
