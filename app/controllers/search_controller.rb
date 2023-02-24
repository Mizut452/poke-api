class SearchController < ApplicationController
  def search
    require 'net/http'
    require 'json'

    uri = URI.parse("https://pokeapi.co/api/v2/pokemon/pikachu")

    raw_response = Faraday.get "https://pokeapi.co/api/v2/pokemon/#{params[:poke_code]}"

    response = Net::HTTP.get_response(uri)
    @result = JSON.parse(raw_response.body)
end

end
