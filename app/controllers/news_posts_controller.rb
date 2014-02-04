class NewsPostsController < ApplicationController
  

  def index
  	@news_posts = NewsPost.all
  end

  def show
  	@news_post = NewsPost.find(params[:id])
  end

  def new
    @news_post = NewsPost.new
  end

  def create
    @news_post = NewsPost.new(news_post_params)

    if @news_post.save
      redirect_to "/news_posts/#{@news_post.id}"
    else
      # DO SOMETHING ELSE
    end
  end

  def edit
    @news_post = NewsPost.find(params[:id])
  end

  def update
    @news_post = NewsPost.find(params[:id])

    if @news_post.update(news_post_params)
      redirect_to "/news_posts/#{@news_post.id}"
    else
      # DO SOMETHING ELSE
    end
  end

  def destroy
    @news_post = NewsPost.find(params[:id])
    @news_post.destroy
    redirect_to "/news_posts"
  end

  private

    def news_post_params
      params.require(:news_post).permit(:title, :body)
    end


end
