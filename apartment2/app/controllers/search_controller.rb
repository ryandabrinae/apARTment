class SearchController < ApplicationController

  def index
  end
  
  def keyword
    @arts = HTTParty.get("https://www.rijksmuseum.nl/api/en/collection?key=RG3BxRnZ&format=json&q=#{params[:keyword]}&imgonly=true")
    respond_to do |format| 
      format.json 
      format.js {render json: @arts.to_json, content_type: 'text/json' }
    end 
  end

  def show
    @response = HTTParty.get("https://www.rijksmuseum.nl/api/en/collection/" + params[:id].downcase + "?key=RG3BxRnZ&format=json")
    @art = Art.new
  end
end


