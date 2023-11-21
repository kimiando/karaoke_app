class UsersController < ApplicationController
  def show
    @users = User.find(:id)
  end
end
