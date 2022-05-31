import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["tag"];

  connect() {
  }

  scroll(event) {
    console.log("yo");
    const test = document.getElementById("tag-scroll")
    test.style.display = 'none';
  }
}
