class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
  end

  def edit
    @match = Match.find(params[:id])
  end

  def new
    @experts = Expert.all
    @users = User.all
  end
end
