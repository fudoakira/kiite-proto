class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    if Entry.where(user_id: current_user.id, room_id: params[:message][:room_id]).present?
      @message = Message.create(params.require(:message).permit(:user_id, :text, :room_id).merge(user_id: current_user.id))
      redirect_to room_path(@message.room_id)
    else
      flash[:alert] = "メッセージを送信できませんでした"
    end
  end
end
