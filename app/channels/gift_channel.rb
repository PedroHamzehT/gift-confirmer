class GiftChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'gift_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
