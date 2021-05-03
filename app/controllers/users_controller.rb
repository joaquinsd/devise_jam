class UsersController < ApplicationController
  def index
    @stories = current_user.stories
  end

  def update
    @user = User.find(params[:id])
    if @user.admin?
      @user.admin = false
    else
      @user.admin = true
    end
    @user.save
    redirect_to admins_index_path, notice: 'Saved changes'
  end
end
