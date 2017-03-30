config.gem "httparty"


# puts response.title, response.maker, response.year, response.img_url

class ArtsController < ApplicationController
# renders all the art on the page
  def index
    @arts = Art.all
  end

  def profile
    # request to the API, brings the data back
    @art = Art.new
    @arts = HTTParty.get("https://www.rijksmuseum.nl/api/en/collection?key=RG3BxRnZ&format=json&q=#{params}&imgonly=true", :headers =>{'Content-Type' => 'application/json'})
    @arts.to_json
    # json = JSON.parse(response.body)
    format.json { render :json => JSON.parse(@result) }
    format.html { render "profile.html.erb" }

    results.each do |result|
       result["url"]
     end

  end



  def create
    # create a new piece of art
    @art = Art.new(art_params)
        if @art.save
            flash[:notice] = "Shout created successfully!"
            redirect_back fallback_location: root_path
        else
            flash[:alert] = "Content can't be blank"
            redirect_back fallback_location: root_path
        end
  end

  private
# what perameters are necessary for creating art
    def shout_params
        params.require(:art).permit(:title, :color1, :color2, :color3, :color4, :color5, :color6,:maker, :year, :img_url, :API_id, :user_id)
    end

end



