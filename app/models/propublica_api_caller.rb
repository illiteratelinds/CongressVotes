class PropublicaApiCaller


  # house_legislator_data = HTTParty.get('https://api.propublica.org/congress/v1/house/votes/recent.json', :headers => { 'Content-Type' => 'application/json', 'X-API-Key' => PROPUBLICA_API_KEY })
  # puts house_legislator_data

  senate_legislator_data = HTTParty.get('https://api.propublica.org/congress/v1/senate/votes/recent.json', :headers => { 'Content-Type' => 'application/json', 'X-API-Key' => PROPUBLICA_API_KEY })
  puts senate_legislator_data

  # house_vote_data = HTTParty.get('https://api.propublica.org/congress/v1/house/votes/recent.json', :headers => { 'Content-Type' => 'application/json', 'X-API-Key' => PROPUBLICA_API_KEY })
  # puts house_vote_data
  
  # senate_vote_data = HTTParty.get('https://api.propublica.org/congress/v1/senate/votes/recent.json', :headers => { 'Content-Type' => 'application/json', 'X-API-Key' => PROPUBLICA_API_KEY })
  # puts senate_vote_data


  def update_legislators
    # start with current legislators
    # add new legislators after elections
  end
end