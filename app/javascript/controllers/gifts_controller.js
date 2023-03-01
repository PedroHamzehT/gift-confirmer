import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // Maybe generate a token here to only enable the same person to unselect a gift
    console.log('Hello stimulus')
  }

  select() {
    console.log('Gift selected', this.element.getAttribute('data-gift'))
  }
}
