class SessionsController < ApplicationController
  def sessions
  end

  def new
  end

  def create
    user = User.find_by(email: email_dans_ton_params)
      if user && user.authenticate(password_dans_ton_params)
        session[:user_id] = user.id
      else
        flash.now[:danger] = 'Invalid email/password combination'
        render :new
      end
  end

  def destroy
    session.delete(:user_id)
  end
end
