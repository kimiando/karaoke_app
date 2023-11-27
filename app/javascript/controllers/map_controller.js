import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
  //   if(navigator.geolocation) {
  //     console.log("hi");
  //     navigator.geolocation.getCurrentPosition(position=>{
  //       // const { latitude, longtitude }
  //       console.log(position.coords);
  //       console.log(position.coords.longitude);
  //       const location = [position.coords.longitude,position.coords.latitude]
  //       console.log(location);
  //       this.#createMap(location)
  //     })
  // }
  this.map = new mapboxgl.Map({
    container: this.element,
    style: 'mapbox://styles/mapbox/streets-v12', // style URL
    center: [139.50,35.65],  // starting position [lng, lat]
    zoom: 10, // starting zoom
  });

  this.map.addControl(
    new mapboxgl.GeolocateControl({
        positionOptions: {
            enableHighAccuracy: true
        },
        // When active the map will receive updates to the device's location as it changes.
        trackUserLocation: true,
        // Draw an arrow next to the location dot to indicate which direction the device is heading.
        showUserHeading: true
    })
  )
  this.#addMarkersToMap()
  this.#fitMapToMarkers()
}

#createMap(location) {
  console.log("creating map");
  console.log(location);
  this.map = new mapboxgl.Map({
    container: this.element,
    style: 'mapbox://styles/mapbox/streets-v12', // style URL
    center: location,  // starting position [lng, lat]
    zoom: 14, // starting zoom
  });

  this.map.addControl(
    new mapboxgl.GeolocateControl({
        positionOptions: {
            enableHighAccuracy: true
        },
        // When active the map will receive updates to the device's location as it changes.
        trackUserLocation: true,
        // Draw an arrow next to the location dot to indicate which direction the device is heading.
        showUserHeading: true
    })
  )
  this.#addMarkersToMap()
  // this.#fitMapToMarkers();
}

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  #addMarkersToMap( ){
    console.log(this.markersValue);
    this.markersValue.forEach((marker) => {
      const customMarker = document.createElement("div")
      // customMarker.style.height: "30px"
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      new mapboxgl.Marker()
      .setLngLat([marker.lng, marker.lat])
      .setPopup(popup)
      .addTo(this.map);
      // this.map.setZoom(15)
    })
  }
}
