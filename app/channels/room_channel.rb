class RoomChannel < ApplicationCable::Channel
  def subscribed
      stream_for "room_#{params[:room_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    message = Message.create(room_id: data['room_id'], user_id: data['user_id'], content: data['message'])
    RoomChannel.broadcast_to "room_#{data['room_id']}", content: render_message(message)
  end

  private
    def render_message(message)
      ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message, current_user: message.user })
    end
end
