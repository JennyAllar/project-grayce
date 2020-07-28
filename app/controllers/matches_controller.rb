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
    @match = Match.new
  end

  def create
    #TODO: use private params method and hidden id field in form
    @match = Match.new(user_id: params[:match][:user_id], expert_id: params[:match][:expert_id], id: (Match.count + 1))
    if @match.save
      flash[:notice] = "match saved"
      redirect_to admin_path
    else
      flash[:error] = "failed to save match"
      redirect_to new_match_path
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to admin_path
  end
end
