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
    if new_params[:isbn].present?
      payload = BookLookupJob.perform_now(new_params[:isbn], "BookSearch::AmazonScraper")
      @book = Book.new(payload)
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
    # keep serie_id if both serie_id and serie name params present
    if safe_params[:serie_id].present?
      safe_params[:serie_attributes].delete(:name)
    end
    @book = Book.new(safe_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to books_url, notice: "Book was successfully created." }
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
        format.html { redirect_to @book, notice: "Book was successfully updated." }
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
    render :index, alert: t("book.error.isbn") and return unless params[:q].present?
    @results = BookLookup.new(
      params[:q],
      params[:scraper].presence || "BookSearch::AmazonScraper"
    ).call
  rescue => e
    @error_msg = e.message
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

    def new_params
      params.permit(:isbn)
    end

    def safe_params
      params.require(:book).permit(:isbn, :title, :serie_id, :tome, :read,
        :release_date, :author, :editor, :asin, :cover_url,
        serie_attributes: [:name])
    end
end
