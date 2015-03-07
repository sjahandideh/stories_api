module Api::V1
  class BooksController < ApplicationController

    # Get
    def index
      books = Book.where nil
      books = books.in_genre(params[:genre])  if params[:genre].present?
      books = books.popular                   if params[:popular].present?

      render json: books
    end

  end
end
