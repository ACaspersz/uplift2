class CommentsController < ApplicationController
    before_action :authenticate_user!
    
    def new
      @comment = Comment.new
    end
    
    def create
      @cause = Cause.find(params[:cause_id])
      @comment = @cause.comments.create!(comment_params.merge({ user_id: current_user.id }))
      redirect_to business_cause_path(@cause.business, @cause)
    end


    def destroy
      @cause = Cause.find(params[:cause_id])
      @comment = @cause.comments.find(params[:id])
      @comment.destroy
      redirect_to business_cause_path(@cause.business, @cause)
    end


    private
  
    def comment_params
      params.require(:comment).permit(:description)
    end
end
