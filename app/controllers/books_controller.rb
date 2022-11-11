class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy, :update_reading_status]

  def index
    @list_view = params[:view] == "list"
    @books = Book
      .all
      .order("created_at DESC")
    @series = @books
      .joins(:serie)
      .order(:name, :tome)
      .reverse if @list_view
    @book = Book.new
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
      format.html
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
        format.html { redirect_to books_url }
        # Need a way to auto-close modal window
        # format.turbo_stream {
        #   render turbo_stream: turbo_stream.prepend(
        #     "turbo-books",
        #     partial: "books/book",
        #     locals: { book: @book }
        #   )
        # }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.turbo_stream {
          render turbo_stream: turbo_stream.replace(
            "new_book",
            partial: "books/form",
            locals: { book: @book }
          )
        }
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(safe_params)
        format.html { redirect_to books_url }
        # format.turbo_stream {
        #   render turbo_stream: turbo_stream.replace(
        #     "book_#{@book.id}",
        #     partial: "books/book",
        #     locals: { book: @book }
        #   )
        # }
      else
        format.html { render :edit, status: :unprocessable_entity }
        # format.turbo_stream {}
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

  def update_reading_status
    @book.update_reading_status

    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: turbo_stream.replace(
          "book_#{@book.id}",
          partial: "books/book",
          locals: { book: @book }
        )
      }
    end
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

  def export
    respond_to do |format|
      format.html
      format.csv { send_data Book.to_csv, filename: "#{Time.current.strftime("%Y%m%d")}_books.csv"}
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
