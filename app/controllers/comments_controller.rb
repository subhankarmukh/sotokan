class CommentsController < ApplicationController
  before_filter :load_commentable

  def index
  	#@commentable = BlogArticle.find(params[:blog_article_id])
  	@comments = @commentable.comments
  end

  def new
  	@comment = @commentable.comments.new
  end

  def create
  	@comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
  	if @comment.save
  		redirect_to @commentable, notice: "Comment created."
  	else
  		render :new
  	end
  end

private
  def load_commentable
  	resource, id = request.path.split('/')[1,2]
  	@commentable = resource.singularize.classify.constantize.find(id)
  end

  def comment_params
  	params.require(:comment).permit(:content)
  end
end
