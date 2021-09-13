class BookshelvesController < ApplicationController
  
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response


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

    # POST /bookshelves
  def create
    bookshelf = Bookshelf.create!(bookshelf_params)
      render json: bookshelf, status: :created
  end
  
      # PATCH /bookshelves/:id
  def update
    bookshelf = find_bookshelf
    bookshelf.update!(bookshelf_params)
    render json: bookshelf
  end

   # DELETE /bookshelf/:id
   def destroy
    bookshelf = find_bookshelf
    bookshelf.destroy
    head :no_content
  end

      private

      def bookshelf_params
        params.permit(:topic)
      end

      def render_not_found_response
        render json: { error: "Bookshelf not found" }, status: :not_found
      end

      def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
      end


      def find_bookshelf
        Bookshelf.find(params[:id])
      end
end
