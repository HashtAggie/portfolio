class PostsController < ApplicationController
  def index
    @posts = Posts.all
  end

  def show
    @posts = Post.find(params[:id])
  end

  def new
    @post = Post.new

    respond_to do |format|
      format.html
      format.json {render :json => @post}
    end
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path, :notice => 'Post was saved'
    else
      render = 'new'
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :text))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def edit
    @posts = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permite(:title, :text, :image)
  end
  
end
