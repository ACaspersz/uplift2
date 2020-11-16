class CommentsController < ApplicationController
    before_action :authenticate_user!
    
    def create
        @comment = @commentable.comments.new(comment_params)
        @comment.user = current_user
        @comment.save
        redirect_to @commentable, notice: "You have posted a comment."
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
