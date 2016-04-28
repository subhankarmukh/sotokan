class BlogArticlesController < InheritedResources::Base

  private

    def blog_article_params
      params.require(:blog_article).permit(:title, :description)
    end
end

