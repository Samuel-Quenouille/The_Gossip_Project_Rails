class UserController < ApplicationController
  def user
  end

  def new
    @user = User.new
  end
end
