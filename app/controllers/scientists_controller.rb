class ScientistsController < ApplicationController

    def index
        scientists = Scientist.all 
        render json: scientists
    end
    
    def show
        scientist = Scientist.find(params[:id])
        if scientist
            render json: scientist, include: ['planets']
        else
            render json: { error: "Not found" }, status: :not_found
        end
    end

    # def create
    #     scientist = Scientist.find_by(username: params[:username])
    #     session[:user_id] = user.id
    #     render json: user
    # end
    
    # def destroy
    #     session.delete :user_id
    #     head :no_content
    # end



end
