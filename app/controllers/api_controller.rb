class ApiController < ApplicationController
  def index

    @json = Hospital.all
    render json: @json
  end
end
