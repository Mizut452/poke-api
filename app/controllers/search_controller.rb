class SearchController < ApplicationController
  def search
    require "json"

    File.open("#{Rails.public_path}/json/pokemon.json") do |f|
      str = JSON.load(f)
      @data = str


    raw_response = Faraday.get "https://pokeapi.co/api/v2/pokemon/#{params[:poke_code]}"
    @result = JSON.parse(raw_response.body)
end

end
end
