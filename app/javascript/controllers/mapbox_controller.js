import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/j-o-r-g-e/cl3w1o325001b14ph6xs4sy5e"
      // style: "mapbox://styles/mapbox/streets-v10"
      // style: "mapbox://styles/jcampbell92/cl3v0v5om002a14nz325tls23"
      // style: "mapbox://styles/j-o-r-g-e/cl3t19y9e000a15r2v7zxu67c"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    // Search functionality
    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }))
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      // Creates popup
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

      // Creates HTML element for the custom marker
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "32px"
      customMarker.style.height = "50px"

      // Creates the marker and passes the HTML element as an argument to the new marker
      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 90, maxZoom: 15, duration: 2400 })
  }
}
