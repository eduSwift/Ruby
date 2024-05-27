import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input", "button"]

  connect() {
  }

  copy() {
    navigator.clipboard.writeText(this.inputTarget.value);
    this.buttonTarget.setAttribute = "disabled";
    this.buttonTarget.innerText = "copied";
    // disable o botao de copiar e alterar o texto do botao para Copied!
  }
}

// console.log("radiohead");
// TODO: console.log something!
// create a target no input para pegar o valor
// mudar marcel por esse valor que voce acabou de pegar
