class SearchController < ApplicationController
  def search
    require 'net/http'
    require 'json'

  if poke_code = params[:poke_code]

    params = URI.encode_www_form({zipcode: poke_code})


    uri = URI.parse("https://pokeapi.co/api/v2/pokemon/#{params}")

    response = Net::HTTP.get_response(uri)
    result = JSON.parse(response.body)

  if result["id"]
    @Poke_Id = result["id"][0]["id"]
  end
end
end

end
