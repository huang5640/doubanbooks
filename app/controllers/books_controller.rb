class BooksController < ApplicationController
  def index
    @search_term = params[:looking_for] || "9787535482495"
    @books = Book.for(@search_term)
  end
end
