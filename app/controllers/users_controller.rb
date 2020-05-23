class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    # @user = current_user.name
    @bags = Report.where(user_id: current_user.id).sum(:bags)
    @days = Report.where(user_id: current_user.id).count
  end
end
