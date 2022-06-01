import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["more", "less"];

  connect() {
  }

  info(event) {
    console.log(this.moreTargets);
    event.preventDefault();
    this.moreTarget.classList.toggle("d-none");
    if (this.lessTarget.innerHTML === "See more ▾") {
      this.lessTarget.innerHTML = "See less ▴";
    } else if (this.lessTarget.innerHTML === "See less ▴"){
      this.lessTarget.innerHTML = "See more ▾";
    }
  }
}
