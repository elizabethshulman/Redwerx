class PostsController < ApplicationController

  def index
     @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @subforum = Subforum.find(params[:subforum_id])
    @post = @subforum.posts.new(post_params)

    if @post.save
      redirect_to subforum_post_url(@subforum, @post)
    else
      render 'new'
    end
  end

  private
    def post_params
      params.require(:post).permit(:title,:body)
    end
end
