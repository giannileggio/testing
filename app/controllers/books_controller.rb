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
		@books = Book.on_sale
	end

	def my_list
		if current_user
			@books = current_user.books
		else
			flash[:error] = 'You need to login'
			redirect_to :root
		end
	end

	def add_to_list
		if current_user
			begin
				book = Book.find(params[:book])
				current_user.books << book
				render json: { success: 'Book added' }
			rescue Exception => e
				render json: { error: e.message}
			end
		else
			flash[:error] = e.message
			redirect_to :root
		end
	end
end
