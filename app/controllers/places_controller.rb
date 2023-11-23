class PlacesController < ApplicationController
  def index
    @places = Place.all
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        info_window_html: render_to_string(partial: "places/popup", locals: { place: place }),
        # image_url: helpers.asset_url(),
        # marker_html: render_to_string(partial: "marker", locals: { place: place })
      }
    end
  end
end
