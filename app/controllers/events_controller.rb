class EventsController < ApplicationController
  def index
    @events = policy_scope(Event.all)
  end

  def show
  end

  def new
  end
end
