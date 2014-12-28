class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy, :update_reading_status]

  def index
    if params[:query].present?
      @books = Book.search_by_keyword(params[:query]).limit(30)
    else
      @books = Book.all
    end
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
          tome: '',
          author: book.get('ItemAttributes/Author').present? ? book.get_array('Author').join(', ') : book.get_array('Creator').join(', '),
          editor: book.get('ItemAttributes/Manufacturer') || book.get('ItemAttributes/Publisher'),
          release_date: book.get('ItemAttributes/ReleaseDate')
        )
        puts "#{@book.inspect}"
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
    @book = Book.new(safe_params)
    @book.read = false

    respond_to do |format|
      if @book.save
        format.html { redirect_to books_url, notice: 'Book was successfully created.' }
        format.js
      else
        format.html { render :new }
        format.js
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(safe_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.js
      else
        format.html { render :edit }
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
      # puts @results.inspect
    else
      render :index, alert: 'No search criteria'
    end
  end

  def update_reading_status
    @book.update_reading_status
  end

  def import
    if params[:file].present?
      begin
        Book.import(params[:file])
        redirect_to root_url, notice: "BD importées."
      rescue Exception => e
        redirect_to start_import_books_url, alert: e.message
      end
    else
      redirect_to start_import_books_url
      flash.alert = "Veuillez sélectionner un fichier."
    end
  end

  private

    def set_book
      @book = Book.find(params[:id])
    end

    def safe_params
      params.require(:book).permit(:isbn, :title, :serie_id, :tome, :read, :release_date, :author, :editor, :asin, :cover_url,
                                    serie_attributes: [:name])
    end
end
