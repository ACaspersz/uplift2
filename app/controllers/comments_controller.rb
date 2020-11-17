class CommentsController < ApplicationController
    before_action :authenticate_user!
    
    def new
      @comment = Comment.new
    end
    
    def create
      @cause = Cause.find(params[:cause_id])
      @comment = @cause.comments.create(comment_params)
      redirect_to cause_path(@cause)
    end


    def destroy
      @cause = Cause.find(params[:cause_id])
      @comment = @cause.comments.find(params[:id])
      @comment.destroy
      redirect_to cause_path(@cause)
    end


    private
  
      def comment_params
        params.require(:comment).permit(:description)
      end
end
