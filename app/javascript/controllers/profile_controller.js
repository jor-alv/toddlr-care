import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["card"];

  connect() {
  }

  hideCard(event) {
    event.preventDefault();

    this.cardTarget.classList.toggle("d-none")
  }
}
