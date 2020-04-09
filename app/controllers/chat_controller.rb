class ChatController < ApplicationController
  def create
    # 自分の持っているチャットルームを取得
    current_user_rooms = UserRoom.where(user_id: current_user.id).map(&:room)
    # 自分の持っているチャットルームからチャット相手のいるルームを探す
    room = UserRoom.where(room: current_user_rooms, user_id: params[:user_id]).map(&:room).first
    # なければ作成する
    if room.blank?
      # roomsテーブルにレコードを作成
      room = Room.create
      UserRoom.create(room: room, user_id: current_user.id)
      UserRoom.create(room: room, user_id: params[:user_id])
    end
    # チャットルームへ遷移させる
    redirect_to action: :show, id: room.id
  end

  # showアクションを追加する
  def show
    # チャット相手の情報を取得する
    room = Room.find_by(id: params[:id])
    # @user_room = room.user_rooms.where.not(user_id: current_user.id).first.user
    @messages = Message.where(room: room).order(:created_at)

  end

end
