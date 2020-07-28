class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def user_home
    @match = Match.find_by(user_id: current_user.id)
  end
end
