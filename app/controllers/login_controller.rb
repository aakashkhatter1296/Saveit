class LoginController < ApplicationController


  def login

  end
  	
  def attempt_login 
  	if params[:username].present? && params[:password].present?
  		@found_user = Hospital.where(:username=>params[:username],:password=>params[:password]).first
  		
  	end	

  	if @found_user
  		flash[:notice]="logged in"
  		redirect_to(:action=>'panel')
      
  	else
  		flash[:notice]="invalid details"
  		redirect_to(:action=>'login')
  	end
  end	

  def panel
  end
end
