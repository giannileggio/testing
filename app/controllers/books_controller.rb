class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def show
		@book = Book.friendly.find(params[:slug])
	end

	def coming_soon
		@books = Book.coming_soon
	end

	def on_sale

	end
end
