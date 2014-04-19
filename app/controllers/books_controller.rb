class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy, :update_reading_status]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    if params[:asin].present?
      asin = params[:asin]
      puts "**** Importing ASIN: #{asin} ****"
      book = Amazon::Ecs.item_lookup(asin, opts = {response_group: 'Medium', country: 'fr'}).items.first
      # puts "#{results.inspect}" // inspect results
      if book.present?
        @book = Book.new(
          isbn: asin, # For books, the ASIN is the same as the ISBN number
          title: book.get('ItemAttributes/Title'),
          volume: '',
          author: book.get('ItemAttributes/Author').present? ? book.get_array('Author').join(', ') : book.get_array('Creator').join(', '),
          editor: book.get('ItemAttributes/Manufacturer') || book.get('ItemAttributes/Publisher')
        )
      else
        @book = Book.new
      end
    else
      @book = Book.new
    end

    respond_to do |format|
      format.html { render layout: false }
      format.js { render layout: false }
    end
  end

  def edit
    respond_to do |format|
      format.html { render layout: false }
      format.js { render layout: false }
    end
  end

  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to books_url, notice: 'Book was successfully created.' }
        format.js
      else
        format.html { render action: 'new' }
        format.js
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.js
      else
        format.html { render action: 'edit' }
        format.js
      end
    end
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end

  def search_on_amazon
    if params[:q].present?
      @results = Amazon::Ecs.item_search(params[:q], {response_group: 'Medium', sort: 'salesrank', country: 'fr'})
      puts @results.to_json
    else
      render :index, alert: 'No search criteria'
    end
  end

  def update_reading_status
    @book.update_reading_status
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:isbn, :title, :serie_id, :volume, :read, :cover, :author, :editor, :asin, serie_attributes: [:name])
    end
end
