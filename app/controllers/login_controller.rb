class LoginController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def login

  end
    
  def attempt_login 
    if params[:username].present? && params[:password].present?
      @found_user = Hospital.where(:username=>params[:username],:password=>params[:password]).first
    end 

    if @found_user
      cookies[:user_id] = @found_user.id
      redirect_to(:action=>'panel')
    else
      flash[:notice]="invalid details"
      redirect_to(:action=>'login')
    end
  end 
  def panel
    @hospital = Hospital.find(cookies[:user_id])
  end
  def notification
    @hospital = Hospital.find(cookies[:user_id])
    @noti = @hospital.routes.all.limit(5)
    puts @noti
    render json: @noti, result: :ok

  end
  

end
