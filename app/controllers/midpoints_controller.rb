class MidpointsController < ApplicationController

  # GET /midpoints/new
  def new
  end

  # POST /midpoints
  # POST /midpoints.json
  def create
    address1 = Address.create(address: params[:address1])
    address2 = Address.create(address: params[:address2])
    midpoint = Geocoder::Calculations.geographic_center([address1.coordinates, address2.coordinates])
    coordinates = { latitude: midpoint[0].round(4), longitude: midpoint[1].round(4) }
    params = { terms: 'restaurant' , limit: 5 }
    #render json: Yelp.client.search_by_coordinates(coordinates, params, locale)
    #def search
    #parameters = { term: params[:term], limit: 16 }
    #render json: Yelp.client.search('San Francisco', parameters)
    #end
    #render text: "#{coordinates}"
    #render text: "midpoint of #{address1.address} and #{address2.address} = #{midpoint}"
    render json: Yelp.client.search_by_coordinates(coordinates, params)
    

  end
end

def show
end