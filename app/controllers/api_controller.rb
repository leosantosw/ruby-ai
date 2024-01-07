require 'sinatra/base'
require_relative '../models/diet_model'
require 'json'

class ApiController < Sinatra::Base
    post '/api/v1/diet' do
        response = DietModel.new.call(params[:diet_days])
        { result: response }.to_json
    end
end
