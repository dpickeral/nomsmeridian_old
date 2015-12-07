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
    render text: "midpoint of #{address1.address} and #{address2.address} = #{midpoint}"
  end
end
