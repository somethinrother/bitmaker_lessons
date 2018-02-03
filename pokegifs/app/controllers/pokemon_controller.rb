class PokemonController < ApplicationController
  def show
    poke_response = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{params[:id]}/")
    poke_body = JSON.parse(poke_response.body)
    @name  = poke_body["name"]
    @id  = poke_body["id"]
    @types = [poke_body["types"][0]["type"]["name"], poke_body["types"][1]["type"]["name"]]

    giphy_response = HTTParty.get(
      "https://api.giphy.com/v1/gifs/search?api_key=#{ENV["GIPHY_KEY"]}=#{poke_body["name"]}&rating=g"
    )
    giphy_body = JSON.parse(giphy_response.body)
    gif_url = giphy_body["data"][0]["url"]

    respond_to do |format|
      format.html
      format.json { render json: {
        id:      @id,
        name:    @name,
        types:   @types,
        gif_url: gif_url,
        }
      }
    end
  end
end
