class DonationsController < ApplicationController
    # before_action :authenticate_user!
    # def index
    #     @donations = Donation.active
    #   end
    
    #   def show
    #   end
    
    #   def new
    #     @donation = Donation.new
    #   end
    
    #   def edit
    #   end
    
    #   def create
    #     @donation= Donation.new(donation_params)
    #     # @item.user_id = generate?
    
    #   end
    
    #   def update
    #     respond_to do |format|
    #       if @donation.update(donation_params)
    #         format.html { redirect_to @donation, notice: 'Donation info was successfully updated.' }
    #         format.json { render :show, status: :ok, location: @donation}
    #       else
    #         format.html { render :edit }
    #         format.json { render json: @donation.errors, status: :unprocessable_entity }
    #       end
    #     end
    #   end
    
    #   def destroy
    #     @donation.destroy
    #     respond_to do |format|
    #       format.html { redirect_to donation_url, notice: 'Item was successfully destroyed.' }
    #       format.json { head :no_content }
    #     end
    #   end
    
    #   private
    #     def set_donation
    #       @donation = Donation.find(params[:id])
    #     end
    
    #     def donation_params
    #       params.require(donation).permit(:price)
    #     end

end
