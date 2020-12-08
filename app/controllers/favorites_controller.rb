class FavoritesController < ApplicationController
  before_action :set_show
  
    def create
      favorite = Favorite.new(show_id: @show.id, user_id: current_user.id)
      if favorite.save
        redirect_to shows_path, notice: 'Show has been favorited...!'
      end
    end
    
    def destroy
      Favorite.where(show_id: @show.id, user_id: current_user.id).first.destroy
      redirect_to shows_path, notice: 'Show has been removed from favorites...!'
    end
    
    private
    
    def set_show
      @show = Show.find(params[:show_id] || params[:id])
    end
end
