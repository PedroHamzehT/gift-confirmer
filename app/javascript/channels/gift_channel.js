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
    console.log(data)
    const giftElement = document.getElementById(`gift_${data.id}`)
    if (data.selected) {
      giftElement.classList.add('gift-selected')
    } else {
      giftElement.classList.remove('gift-selected')
    }
  }
});
