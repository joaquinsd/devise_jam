class AdminsController < ApplicationController
  def index
    if current_user.admin?
      @users = User.all
    else
      redirect_to root_path, alert: 'You have no permissions to access this section'
    end
  end
end
