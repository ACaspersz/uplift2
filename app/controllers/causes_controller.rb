class CausesController < ApplicationController
  before_action :set_cause, only: [:show, :update, :destroy]

  def index
  end
    
  def show
  end

  def search
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @results = Store.all.where("lower(name) LIKE :search", search: @parameter)  
    end 
  end

      # def search
      #   if params[:search].blank?  
      #     redirect_to(causes_path, alert: "Empty field!") and return  
      #   else  
      #     @parameter = params[:search].downcase  
      #     @results = Store.all.where("lower(name) LIKE :search", search: @parameter)  
      #   end
      # end
    
  def new
    @business = Business.find(params[:business_id])
    @cause = Cause.new

  end

  def create
    # @cause_id = @business.id
    
    # params[:picture] && params[:picture]['picture'].each do |picture|
    #   @cause.picture = picture
    # end
    #   @cause.save
   
    @cause = Cause.new(cause_params)
    @cause.business_id = params[:business_id]
    params[:picture] && params[:picture]['picture'].each do |picture|
      @cause.picture = picture
    end
    @cause.save!

    respond_to do |format|
      if @cause.save
        format.html { redirect_to business_cause_path(@cause[:id]), notice: 'Cause was successfully created.' }
        format.json { render :show, status: :created, location: @cause }
      else
        format.html { render :new }
        format.json { render json: @cause.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def profile
  end 
    
  def edit
    respond_to do |format|
      if @cause.update(cause_params)
        format.html { redirect_to @cause, notice: 'Business Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @cause }
      else
        format.html { render :edit }
        format.json { render json: @cause.errors, status: :unprocessable_entity }
      end
    end
  end
    
  def destroy
    @cause.destroy
    respond_to do |format|
      format.html { redirect_to causes_url, notice: 'Business Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
  def cause_params
    params.require(:cause).permit(:cause_name, :picture, :description, :donation_goal)
  end
  
  def set_cause
    @cause = Cause.find(params[:id])
  end 

end
