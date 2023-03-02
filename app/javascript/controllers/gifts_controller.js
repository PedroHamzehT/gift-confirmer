import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // Maybe generate a token here to only enable the same person to unselect a gift
    console.log('Hello stimulus')
  }

  select(event) {
    const giftId = event.currentTarget.id.replace('gift_', '')
    const csrfToken = document.querySelector('meta[name=csrf-token]').content

    fetch(`/gifts/${giftId}/confirm`, {
      method: 'POST',
      headers: {
        'X-CSRF-TOKEN': csrfToken
      }
    }).then((response) => response.json())
      .then((data) => {
        alert(data.message)
      })
  }
}
