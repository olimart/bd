class SearchController < ApplicationController
  def amazon
    @book = if params[:q].blank?
      {}
    else
      BookLookup.new(
        params[:q],
        params[:scraper].presence || "BookSearch::AmazonScraper"
      ).call
    end

    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: turbo_stream.replace(
          "turbo-results",
          partial: "results"
        )
      }
    end
  end

  def books
    @list_view = params[:view] == "list"
    @books = Book
      .search_by_keyword(params[:query])
      .limit(30)
    @series = @books
      .joins(:serie)
      .order("series.name", :tome) if @list_view

    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: turbo_stream.update(
          "turbo-books",
          partial: "books/book",
          collection: @books
        )
      }
    end
  end
end
