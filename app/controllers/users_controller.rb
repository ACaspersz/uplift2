class UsersController < ApplicationController
    # before_action :set_cause, only: [:show, :edit, :update, :destroy]
    # # before_action :authenticate_user!, except: [:index, :show]
    # before_action :cause_params, only: [:create, :update]
  
      def index
         
        end
      
        def show

        end

        def edit
        end
  
        # def profile
        # end 
      
        
      
        def update
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
      
        # private
        #   def set_cause
        #     @cause = Cause.find(params[:id])
        #   end
      
        #   def cause_params
        #     params.require(:cause).permit(:business_name, :region, :description, :donation_goal)
        #   end
  

end
