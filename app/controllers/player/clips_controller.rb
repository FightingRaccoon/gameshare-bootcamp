class Player::ClipsController < ApplicationController
    before_action :authenticate_user!

    def new
        @clip = Clip.new
    end

    def create
        @clip = current_user.clips.create(clip_params)
        if @clip.valid?
            redirect_to player_clip_path(@clip)
        else
            render :new, status: :unprocessable_entity
        end
        
    end

    def show
        @clip = Clip.find(params[:id])
    end

private

    def clip_params
        params.require(:clip).permit(:title, :description)
    end

end
