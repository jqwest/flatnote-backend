class WelcomeController < ApplicationController

    def index
        render json: {greeting: "Welcome to Flatenote"}
    end
end
