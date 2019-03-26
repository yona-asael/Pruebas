class PostController < ApplicationController
  before_action :set_id, only:[:show,:edit,:update,:destroy]
  def index
      @post = Post.where(category_id: params[:idCom])
      @cats = Category.all

  end
  def show
    @post = Post.find(params[:id])
    @cats = Category.all
    @com = Comment.includes(:user).where(post_id: @post.id)
    @comment = Comment.new
  end
  def mpost
      @cats = Category.all
      @post = Post.where(user_id: current_user.id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(set_post)
    @post.save
    redirect_to post_index_path
  end

  def add

  end

  def edit
  end
  def update
      @post.update(set_post)
      redirect_to @post
  end
  def destroy
      @post.destroy
      redirect_to post_index_path
  end


  private
  def set_post
    params.require(:post).permit(:image,:name,:description)
  end
  def set_id
    @post = Post.find(params[:id])
  end



end
