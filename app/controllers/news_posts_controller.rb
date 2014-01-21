class NewsPostsController < ApplicationController
  

  def index
  	@news_posts = NewsPost.all
  end

  def show
  	@news_post = NewsPost.find(params[:id])
  end

  def new
  end

  def edit
  end


end
