class AddMinusController < ApplicationController
  
  skip_before_filter :verify_authenticity_token
  def plus

    @hospital = Hospital.find(cookies[:user_id])
    @hospital.ambulance_count+=1
    @hospital.save
    render json: @hospital, result: :ok

  end
  
  def minus
    @hospital = Hospital.find(cookies[:user_id])
    if @hospital.ambulance_count > 0
    	@hospital.ambulance_count-=1
    	@hospital.save
    end
    render json: @hospital, result: :ok
    
  end

end
