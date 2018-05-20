class LegislatorsController < ApplicationController

  def index
    @legislators = Legislator.all
  end

  def show
    @legislator = Legislator.find(legislator_id)
  end

  private

  def legislator_params
    params.require(:legislator).permit(:first_name, :middle_name, :last_name, :state, :party, :title, :chamber, :term_start, :term_end, :missed_votes_pct, :state_id)
  end
end
