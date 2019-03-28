# namespace :legislators do
#   desc "Update legislator information"
#   task :update_legislators => :environment do
#     PropublicaApiCaller.update_legislators
#   end
#   # desc "Update legislator statistics"
#   # task :update_stats => :environment do
#   #   PropublicaApiCaller.update_stats
#   # end

# end

  task :update_legislators => :environment do
    PropublicaApiCaller.update_legislators
  end
