class BirdsController < ApplicationController
    
    def index
        birds = Bird.all
        render json: birds, status: :ok
    end

    def show
        bird = Bird.find(params[:id])
        if bird
        render json: bird
       else
        render json: { error: "Bird not found"}, status: not_found
       end
    end
end
