require "spec_helper"

describe User do
  it { should have_many :course_registrations }
  it { should have_many(:courses).through(:course_registrations) }
  it { should have_many(:seven_week_sessions).through(:course_registrations) }
end