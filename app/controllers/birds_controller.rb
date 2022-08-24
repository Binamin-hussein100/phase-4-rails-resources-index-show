class BirdsController < ApplicationController
    def index
        birds = Bird.all
        render json: birds        
    end

    def show
        bird = Bird.find(params[:id])
        if bird
            render json: bird
        else
            render json: {error: "not found"}
        end
    end
end
