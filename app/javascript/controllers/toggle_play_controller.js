import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-play"
export default class extends Controller {
  static targets = ["audio"]

  toggle(e) {
    if (this.audioTarget.classList.contains("playing")) {
    this.audioTarget.pause();
    this.audioTarget.classList.remove("playing")
      e.target.classList.add("fa-circle-play")
      e.target.classList.remove("fa-circle-pause")
    } else {
    this.audioTarget.play();
    this.audioTarget.classList.add("playing")
    e.target.classList.remove("fa-circle-play")
    e.target.classList.add("fa-circle-pause")
  }
  }
  connect() {
  }
}
