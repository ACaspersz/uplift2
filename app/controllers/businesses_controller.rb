class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :create, :update, :destroy]
  
  def index
        @businesses = Business.all
    end

    def new
        @business = Business.new
    end

    
    def create
      @business = Business.new(business_params)
      @business.user_id = current_user.id

      respond_to do |format|
      if @business.save!
        format.html { redirect_to @business, notice: 'Business was successfully created.' }
        format.json { render :show, status: :created, location: @business }
      else
        format.html { render :new }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
    
    

    def show
        
    end

    def destroy
    end

    def update 
    end

    private

    def business_params
        params.require(:business).permit(:user_id, :business_name, :region, :category, :thumbnail, :description)
    end

    def set_business
      @business = Business.find(params[:id])
    end

  end
end