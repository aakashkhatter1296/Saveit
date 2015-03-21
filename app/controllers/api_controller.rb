class ApiController < ApplicationController

  protect_from_forgery with: :null_session
  def hospitals
    @json = Hospital.all
    render json: @json
  end

  def hospital
    @json = Hospital.where(:name=> URI.unescape(params[:name])).first
    render json: @json, :except => [:password]
  end
end