class SearchArtsController < ApplicationController

  def keyword
    # searches the database for art
    # @user = User.find(params[:id])
    @arts = HTTParty.get("https://www.rijksmuseum.nl/api/en/collection?key=RG3BxRnZ&format=json&q=#{params[:art][:title]}&imgonly=true")
    puts @arts.to_json
    @art = Art.new
    # json = JSON.parse(response.body)
  end
end


