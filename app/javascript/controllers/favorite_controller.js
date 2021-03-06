import { post } from "jquery";
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["link", "icon", "text"];
  static values = {id: Number}

  connect() {
    console.log("Yo");
    console.log(this.idValue);
  }

  toggleFavorite(event) {
    event.preventDefault();
    console.log(event);
    console.log(this.linkTarget.href);
    console.log(this.linkTarget.innerHTML);
    if (this.iconTarget.classList.contains('fa-regular')) {
      this.iconTarget.classList.remove('fa-regular')
      this.iconTarget.classList.add('fa-solid')
      this.iconTarget.innerText = ''
    } else {
      this.iconTarget.classList.remove('fa-solid')
      this.iconTarget.classList.add('fa-regular')
      // this.iconTarget.innerText = ' Add to favorites'
    }
    fetch(this.linkTarget.href, {
      method: "GET"
    })
  }

  toggleText(event) {
    event.preventDefault();

    this.textTarget.classList.toggle("d-none")
  }
}
