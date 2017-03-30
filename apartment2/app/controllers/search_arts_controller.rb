require "httparty"
class SearchArtsController < ApplicationController

  def keyword
    # searches the database for art
    # @user = User.find(params[:id])
    @arts = HTTParty.get("https://www.rijksmuseum.nl/api/en/collection?key=RG3BxRnZ&format=json&q=#{params[:art][:title]}&imgonly=true", :headers => headers).parsed_response
    puts @arts.to_json
    @art = Art.new
    # body = JSON.parse(response.body)
    # id = body["id"]
    # json = JSON.parse(response.body)

    results = response{"result"}
    puts results["count"]

     # @arts.each do |art|
     #  art["count"]
     # end
  end
end


