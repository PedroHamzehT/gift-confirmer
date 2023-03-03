class Gift < ApplicationRecord
  validates :name, presence: true

  after_update do |gift|
    ActionCable.server.broadcast 'gift_channel', { gift:, new: false }
  end

  after_create do |gift|
    ActionCable.server.broadcast 'gift_channel', { gift:, new: true }
  end
end
