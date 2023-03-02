class Gift < ApplicationRecord
  after_update do |gift|
    ActionCable.server.broadcast 'gift_channel', { id: gift.id, selected: gift.selected }
  end
end
