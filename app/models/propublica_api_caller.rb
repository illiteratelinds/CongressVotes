require 'pry-byebug'

class PropublicaApiCaller

  @attributes = ["member_id", "first_name", "middle_name", "last_name", "party", "title", "chamber", "term_start", "term_end", "missed_votes_pct", "date_of_birth", "next_election", "total_votes", "missed_votes", "office", "phone", "votes_with_party_pct", "twitter_account", "facebook_account", "youtube_account", "govtrack_id", "votesmart_id", "state"]
  @chambers = ["senate", "house"]

  def self.update_legislators
    Legislator.destroy_all

    @chambers.each do |chamber|
      member_data = HTTParty.get("https://api.propublica.org/congress/v1/115/#{chamber}/members.json", :headers => { 'Content-Type' => 'application/json', 'X-API-Key' => ENV["PROPUBLICA_API_KEY"] })

      member_data["results"][0]["members"].each do |legislator_json|
        legislator = Legislator.new
        @attributes.each do |attribute|
          if attribute == "member_id"
            legislator.member_id = legislator_json["id"]
          elsif attribute != "state"
            legislator.send("#{attribute}=", legislator_json[attribute])
          else
            state = State.find_by(abbreviation: legislator_json["state"])
            legislator.state_id = state.id
          end
        end
        legislator.save!
      end
    end
  end
end