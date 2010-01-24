namespace :honey do
  namespace :foursquare do
    desc 'Get updated info from Foursquare'
    task :sync => :environment do
      FoursquareUser.all { |u| u.sync }      
    end
  end
end