class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) || current_user
  end
end
