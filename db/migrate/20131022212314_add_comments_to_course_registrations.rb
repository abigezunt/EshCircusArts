class AddCommentsToCourseRegistrations < ActiveRecord::Migration
  def change
    add_column :course_registrations, :comments, :text
  end
end
