require "spec_helper"

describe CourseRegistration do
  it { should belong_to :user }
  it { should belong_to :registerable }

  it { should ensure_inclusion_of(:role).in_array(['student', 'instructor']) }
end