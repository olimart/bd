require 'test_helper'

class Scraper::Bdgest::ReleaseTest < ActiveSupport::TestCase
  setup do
    @month = '01'
    @year = '2020'
    fixture = "./test/fixtures/bdgest/releases_#{[@month, @year].join}.html"
    @content = File.read(fixture)
    @scraper = Scraper::Bdgest::Release.new(@month, @year)
  end

  test 'should return an array of books if success' do
    def request; @content; end
    service = @scraper.call

    assert_equal Array, service.class
    assert_equal 65, service.size
  end

  test 'should extract book details when title is missing' do
    def request; @content; end
    service = @scraper.call.first

    assert_equal "Les aventures d'Elias", service[:serie]
    assert_nil service[:title]
    assert_equal '2', service[:tome]
    assert_equal 'Y.I.L. Édition', service[:editor]
    assert_match /https:\/\/www.bedetheque.com/i, service[:url]
    assert_equal 'jpg', service[:cover_url].split('.').last
  end

  test 'should extract book details when only the serie is present' do
    def request; @content; end
    service = @scraper.call[3]

    assert_equal 'Identités troubles', service[:serie]
    assert_nil service[:title]
    assert_nil service[:tome]
  end

  test 'should extract all book details' do
    def request; @content; end
    service = @scraper.call[14]

    assert_equal 'Les reines de sang', service[:serie]
    assert_equal "Constance d'Antioche, la Princesse rebelle", service[:title]
    assert_equal '2', service[:tome]
  end
end
