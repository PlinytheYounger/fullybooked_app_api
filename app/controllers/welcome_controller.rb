class WelcomeController < ApplicationController
    def index
        render json: {status: 200, message: 'Fully Booked API'}
    end
end
