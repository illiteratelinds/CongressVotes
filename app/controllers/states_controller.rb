class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    @state = State.find(state_id)
  end
end
