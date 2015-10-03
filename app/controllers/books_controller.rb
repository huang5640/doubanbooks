class BooksController < ApplicationController
  def index
    @search_term = params[:looking_for] || "python"
    @books = Book.index(@search_term)
  end

  def isbn
  	@search_isbn = params[:looking_for] || "9787020042494" #ISBN for 小王子
  	@book = Book.isbn(@search_isbn)
  end
end
