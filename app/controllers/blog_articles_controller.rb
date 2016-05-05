class BlogArticlesController < InheritedResources::Base

  before_action :set_blog_article, only: [:show, :edit, :update, :destroy]

  authorize_resource

  def create
    @blog_article = BlogArticle.new(blog_article_params)
    @blog_article.user = current_user

    respond_to do |format|
      if @blog_article.save
        format.html { redirect_to @blog_article, notice: 'Blog article was successfully created.' }
        format.json { render :show, status: :created, location: @blog_article }
      else
        format.html { render :new }
        format.json { render json: @blog_article.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  	def set_blog_article
  	  @blog_article = BlogArticle.find(params[:id])
  	end

    def blog_article_params
      params.require(:blog_article).permit(:title, :description)
    end
end

