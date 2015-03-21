class LoginController < ApplicationController


  def login

  end
  	
  def attempt_login 
  	if params[:username].present? && params[:password].present?
  		found_user = User.where(:username=>params[:username])
  		if found_user
  			auth_user = found_user.authenticate(params[:password])
  		end	
  	end	
  	if auth_user
  		flash[:notice]="logged in"
  		redirect_to('')
  	else
  		flash[:notice]="invalid details"
  		redirect_to('login')	
  	end
  end	

end
