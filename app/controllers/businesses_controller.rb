class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :update, :destroy]
  
  def index
      @businesses = Business.all
  end

  def new
      @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    @business.user_id = current_user.id
    params[:picture] && params[:picture]['picture'].each do |picture|
      @business.picture = picture
    end
      @business.save

    respond_to do |format|
      if @business.save
        format.html { redirect_to business_path(@business), notice: 'Business was successfully created.' }
        format.json { render :show, status: :created, location: @business }
      else
        format.html { render :new }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def search
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @results = Business.all.where("lower(name) LIKE :search", search: @businesses)  
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
      params.require(:business).permit(:user_id, :business_name, :region, :category, :picture, :description)
  end

  def set_business
    @business = Business.find(params[:id])
  end

end