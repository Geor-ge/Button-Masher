class ChatsController < ApplicationController
    def show
    @other_user = User.find(params[:other_user])
    @chat = Chat.find_by(id: params[:id])
    @message = Message.new
  end
end
