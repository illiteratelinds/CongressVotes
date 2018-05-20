require 'pry-byebug'

class PropublicaApiCaller

  @attributes = ["state", "first_name", "middle_name", "last_name", "party", "title", "chamber", "term_start", "term_end", "missed_votes_pct"]

  def self.update_legislators
    Legislator.destroy_all
    senate_member_data = HTTParty.get("https://api.propublica.org/congress/v1/115/senate/members.json", :headers => { 'Content-Type' => 'application/json', 'X-API-Key' => ENV["PROPUBLICA_API_KEY"] })

    senate_member_data["results"][0]["members"].each do |legislator_json|
      legislator = Legislator.new
      @attributes.each do |attribute|
        if attribute != "state"
          legislator.send("#{attribute}=", legislator_json[attribute])
        else
          state = State.find_by(abbreviation: legislator_json["state"])
          legislator.state_id = state.id
        end
      end
      legislator.save!
    end
    house_member_data = HTTParty.get("https://api.propublica.org/congress/v1/115/house/members.json", :headers => { 'Content-Type' => 'application/json', 'X-API-Key' => ENV["PROPUBLICA_API_KEY"] })

    house_member_data["results"][0]["members"].each do |legislator_json|
      legislator = Legislator.new
      @attributes.each do |attribute|
        if attribute != "state"
          legislator.send("#{attribute}=", legislator_json[attribute])
        else
          state = State.find_by(abbreviation: legislator_json["state"])
          # binding.pry
          legislator.state_id = state.id
        end
      end
      legislator.save!
    end
  end
end