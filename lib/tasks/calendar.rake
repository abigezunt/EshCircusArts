namespace :calendar do
  desc "clears all events from google calendar"
  task clear: :environment do
  	events = Cal.events
    events.each do |event|
	    event.delete
    end
  end

  desc 'populates calendar with events from courses'
  task populate: :environment do
  	Course.all.each do |course|
	    course.create_gcal_event
    end
  end
end
