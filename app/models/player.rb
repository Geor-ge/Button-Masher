class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable



  has_many :messages
  has_many :subscriptions
  has_many :chats, through: :subscriptions

  def existing_chats_players
    existing_chat_players = []
    self.chats.each do |chat|
      existing_chat_players.concat(chat.subscriptions.where.not(player_id: self.id).map {|subscription| subscription.player})
    end

    existing_chat_players.uniq
  end
end
