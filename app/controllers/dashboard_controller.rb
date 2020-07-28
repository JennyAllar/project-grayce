class DashboardController < ApplicationController
  before_action :authenticate_expert!

  def index
    @matches = Match.where(expert_id: current_expert.id)
  end
end
