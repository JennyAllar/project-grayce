class DashboardController < ApplicationController
  before_action :authenticate_expert!
  helper_method :matches
  helper_method :care_plans

  def matches
    @matches ||= current_expert.matches
  end

  def care_plans
    current_expert.care_plans
  end
end
