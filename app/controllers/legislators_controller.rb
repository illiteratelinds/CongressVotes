class LegislatorsController < ApplicationController

  def index
    @legislators = Legislator.all
  end

  def show
    @legislator = Legislator.find(params[:id])
  end

  private

  def legislator_params
    params.require(:legislator).permit(:first_name, :middle_name, :last_name, :state, :party, :title, :chamber, :term_start, :term_end, :missed_votes_pct, :state_id, :date_of_birth, :next_election, :total_votes, :missed_votes, :office, :phone, :votes_with_party_pct, :twitter_account, :facebook_account, :youtube_account, :govtrack_id, :votesmart_id)
  end
end