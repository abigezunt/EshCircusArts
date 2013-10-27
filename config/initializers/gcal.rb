Cal = Google::Calendar.new(:username => ENV['GCAL_USERNAME'],
                           :password => ENV['GCAL_PASSWORD'],
                           :app_name => ENV['GCAL_APP_NAME'])

