import consumer from "channels/consumer"

consumer.subscriptions.create("GiftChannel", {
  connected() {
    console.log('Connected to gift channel...')
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    if (data.new) {
      const clone = document.querySelector('div.card').cloneNode(true)
      clone.querySelector('h3').textContent = data.gift.name
      clone.id = `gift_${data.gift.id}`

      document.querySelector('main.cards').appendChild(clone)
      return
    }

    const giftElement = document.getElementById(`gift_${data.gift.id}`)
    if (data.gift.selected) {
      giftElement.classList.add('gift-selected')
      giftElement.querySelector('button').classList.add('hidden')
    } else {
      giftElement.classList.remove('gift-selected')
      giftElement.querySelector('button').classList.remove('hidden')
    }
  }
});
