class PropublicaApiCaller


  my_data = HTTParty.get('https://api.propublica.org/congress/v1/house/votes/recent.json', :headers => { 'Content-Type' => 'application/json', 'X-API-Key' => PROPUBLICA_API_KEY })
  puts my_data


end