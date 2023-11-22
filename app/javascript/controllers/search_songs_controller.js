import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="search-songs"
export default class extends Controller {
  static targets = ["input", "form", "list"];

  connect() {
    console.log("connected")
  }
  update() {
    // building the URL on where to submit the form, along with the song name
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`;
    console.log(url)
    // submitting the input the user is typing to our Rails controller
    fetch(url, { headers: { Accept: "text/plain" } })
      .then((response) => response.text())
      .then((data) => {
        // the data is the HTML (as a string) coming from the Rails controller
        // we want to replace the existing list with the new songs (aka the 'data')
        this.listTarget.innerHTML = data;
      });
  }
}
