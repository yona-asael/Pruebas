class BlogController < ApplicationController
  def index
    @post = Post.limit(10)
    @posts = Post.limit(1)
    @cats = Category.all
  end
end
