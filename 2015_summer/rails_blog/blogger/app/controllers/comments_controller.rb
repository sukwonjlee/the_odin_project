class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])
		# @comment = @article.comments.new(comment_params)
		@comment = Comment.new(comment_params)
		@comment.article_id = @article.id
		@comment.save

		redirect_to article_path(@article.id)
	end

	private
	def comment_params
		params.require(:comment).permit(:author_name, :body)
	end
end
