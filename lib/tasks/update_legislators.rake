task :update_legislators => :environment do
  PropublicaApiCaller.update_legislators
end

