class BookController < ApplicationController
    def index
        @book = Book.all
        render json: @book
      end

      def create
        @book= Book.new(book_params)

        if @book.save
          render json: @book
        else
          render json: {error: @book.errors.messages},status: 422
        end
      end

      def show
        @book=Book.where(title: params[:id]).or(Book.where(author: params[:id]))

        render json: @book

      end

      def destroy
        @book = Book.find_by(title: params[:title])

        if @book.destroy
          head :no_content
        else 
          render json: {error: @book.errors.messages},status: 422
        end
        
      end

      def book_params
        params.require(:book).permit(:title, :author, :genre, :stock, :published_year)
      end

     
end
