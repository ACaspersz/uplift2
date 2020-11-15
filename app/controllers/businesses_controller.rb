class BusinessesController < ApplicationController
    def index
        @businesses = Business.all
    end

    # def new
    #     @business = Business.new
    # end

    def create
    @business.user_id = current_user.id
    @business.save
    end

    def show
    end

    def destroy
    end

    def update 
    end
end
