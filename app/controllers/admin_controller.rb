class AdminController < ApplicationController
  before_action :authenticate_admin!

  def index
    @matches = Match.all
    @users = User.all
    @experts = Expert.all
  end
end
