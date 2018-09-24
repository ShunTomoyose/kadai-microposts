class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.add_favorite(micropost)
    flash[:success] = 'お気に入り登録しました'
    redirect_to :back
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.del_favorite(micropost)
    flash[:success] = 'お気に入り解除しました'
    redirect_to :back
  end
end
