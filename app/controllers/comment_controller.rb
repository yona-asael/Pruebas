class CommentController < ApplicationController


  def create
    @com = current_user.comments.new(set_com)
    @com.save
    redirect_to post_path(id: @com.post_id)
  end

  def destroy
    @com = Comment.find(params[:id])
    @com.destroy
    redirect_to post_path(id: @com.post_id)
  end


private
  def set_com
    params.require(:comment).permit(:post_id,:description)
  end
end
