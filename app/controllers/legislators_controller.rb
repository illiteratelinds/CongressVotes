class LegislatorsController < ApplicationController

  def index
    @legislators = Legislator.all
  end

  def show
    @legislator = Legislator.find(legislator_id)
  end
end
