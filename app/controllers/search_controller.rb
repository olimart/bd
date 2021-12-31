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
          "search-results",
          partial: "results"
        )
      }
    end
  end
end
