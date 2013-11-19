require "spec_helper"

describe Course do
  it { should have_many(:course_registrations) }
  it { should have_many(:users).through(:course_registrations) }
  it { should belong_to :discipline }
  it { should belong_to :seven_week_session }
end