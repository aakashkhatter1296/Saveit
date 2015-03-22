require 'httparty'
require 'json'

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

  def search
    hospitals = Hospital.all

    blah = []
    final = []


    hospitals.each_with_index do |hospital, index|
      blah[index] = {}
      distance = Math.sqrt((hospital.latitude - params[:latitude].to_f) ** 2 + (hospital.longitude - params[:longitude].to_f) ** 2).to_f
      hospital.distance = distance
      blah[index][:id] = hospital.id
      blah[index][:name] = hospital.name
      blah[index][:username] = hospital.username
      blah[index][:ambulance_count] = hospital.ambulance_count
      blah[index][:hospital_type] = hospital.hospital_type
      blah[index][:latitude] = hospital.latitude
      blah[index][:longitude] = hospital.longitude
      blah[index][:distance] = hospital.distance
    end

    blah.sort_by! { |item|
      item[:distance]
    }

    blah = blah.slice(0,5)

    blah.each_with_index do |hospital, index|
      final[index] = {}
      puts hospital
      final[index][:id] = hospital[:id]
      final[index][:name] = hospital[:name]
      final[index][:username] = hospital[:username]
      final[index][:ambulance_count] = hospital[:ambulance_count]
      final[index][:hospital_type] = hospital[:hospital_type]
      final[index][:latitude] = hospital[:latitude]
      final[index][:longitude] = hospital[:longitude]
      final[index][:distance] = hospital[:distance]

      response = HTTParty.get(URI.parse(URI.encode("https://maps.googleapis.com/maps/api/distancematrix/json?origins="+hospital[:latitude].to_s + ","+ hospital[:longitude].to_s+"&destinations="+params[:latitude]+","+params[:longitude]+"&mode=driving&language=en-GB&key=AIzaSyAt4kcRlq_zRLh5_JXzrb8LRj8E5cSaePc")))
      hash = JSON.parse response.body

      final[index][:eta] = hash["rows"][0]["elements"][0]["duration"]["text"]
      final[index][:eta_integer] = hash["rows"][0]["elements"][0]["duration"]["value"]
      final[index][:distance_km] = hash["rows"][0]["elements"][0]["distance"]["text"]
    end

    @route = Route.new
    

    render json: { "search_results" => final.slice(0, 5)}
  end
end