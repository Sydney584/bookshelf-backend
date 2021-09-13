class BookshelvesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    

    # GET /bookshelves
    def index
      bookshelves = Bookshelf.all
      render json: bookshelves 
    end

    #GET /bookshelves/:id
    def show
        bookshelf = find_bookshelf
        render json: bookshelf
      
      end

      private

      def render_not_found_response
        render json: { error: "Bookshelf not found" }, status: :not_found
      end

      def find_bookshelf
        Bookshelf.find(params[:id])
      end
end
