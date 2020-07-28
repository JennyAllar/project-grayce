module Accessible
  extend ActiveSupport::Concern
  included do
    # before_action :check_user
  end

  protected
  # def check_user
  #   if current_expert
  #     flash.clear
  #     redirect_to(dashboard_path) and return
  #   elsif current_user
  #     flash.clear
  #     # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
  #     redirect_to(user_home_path) and return
  #   end
  # end
end
