class BookshelvesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response


    # GET /bookshelves
    def index
      bookshelves = Bookshelf.all
      render json: bookshelves 
    end

    # POST /bookshelves
  def create
    bookshelf = Bookshelf.create!(bookshelf_params)
      render json: bookshelf, status: :created
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
