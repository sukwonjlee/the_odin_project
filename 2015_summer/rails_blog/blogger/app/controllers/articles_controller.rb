class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
		# @article = Article.new
		# @article.title = params[:article][:title]
		# @article.body = params[:article][:body]
		# @article.save

		# We can clean it up!

		# @article = Article.new(params[:article])
		# @article.save

		# We can clean it up more with private method!

		@article = Article.new(article_params)
		@article.save

		flash.notice = "Article '#{@article.title}' Created!!"

		redirect_to article_path(@article.id)
	end

	def update
		@article = Article.find(params[:id])
		@article.update(article_params)

		flash.notice = "Article '#{@article.title}' Updated!!"

		redirect_to article_path(@article.id)
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		flash.notice = "Article '#{@article.title}' Deleted!!"

		redirect_to articles_path
	end

	private
	def article_params
		params.require(:article).permit(:title, :body)
	end

end
