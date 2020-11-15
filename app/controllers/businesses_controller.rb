class BusinessesController < ApplicationController
    def index
        @businesses = Business.all
    end

    def new
        @business = Business.new
    end

    def create
        def create
            @business = Business.new(business_params)
        
            respond_to do |format|
              if @business.save
                format.html { redirect_to @business, notice: 'Business was successfully created.' }
                format.json { render :show, status: :created, location: @business }
              else
                format.html { render :new }
                format.json { render json: @business.errors, status: :unprocessable_entity }
              end
            end
          end
    end

    def show
        @business = Business.all(@user)
    end

    def destroy
    end

    def update 
    end

    private

    def business_params
        params.require(:business).permit(:business_name, :region, :category, :thumbnail, :description)
    end
end
