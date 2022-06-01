import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["tag"];

  connect() {
  }

  scroll(event) {
    const test = document.getElementById("tag-scroll");
    console.log(test);
    window.scroll({
      top: 800,
      behaviour: 'smooth'
      })
    // test.scrollIntoView();
  }
}
