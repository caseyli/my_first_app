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
  end

  private

    def news_post_params
      params.require(:news_post).permit(:title, :body)
    end


end
