# frozen_string_literal: true

# Service to check if portfolio has new releases available
#
# @example
#
#   PortfolioRelease.new(month: '01', year: '2020').call
#
# @param [String] month The full month number.
# @param [String] year The full year number.
#
# @return [Array]
#
class PortfolioRelease
  attr_reader :month, :year, :service

  def initialize(month:, year:, service: Scraper::Bdgest::Release)
    @month = '%02i' % month
    @year = year
    @service = service
  end

  def call
    books = []
    releases.group_by { |r| r[:serie] }.sort.each do |serie|
      next unless series.include?(serie.first.downcase)
      serie.last.map { |book| books << book }
    end
    books
  end

  private

    def releases
      service.new(month, year).call
    end

    def series
      @series ||= Serie.all.pluck(:name).sort.map { |s| s.downcase }
    end
end
