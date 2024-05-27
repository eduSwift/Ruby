import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    console.log("hello there");
    // TODO: console.log something!
  }

  disable() {
    console.log(this.element);
    this.element.innerText = "Bingo!";
    this.element.setAttribute("disabled", "");
    const audio = new Audio('sound.mp3');
    audio.play();
  }
}
