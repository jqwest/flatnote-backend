class WelcomeController < ApplicationController

    def index
        render json: {name: "John"}
    end
end
