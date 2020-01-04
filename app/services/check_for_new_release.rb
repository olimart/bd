class CheckForNewRelease
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def call
    books = PortfolioRelease.new(month: month, year: year).call
    send_notification(books) if books.any?
  end

  private

    def send_notification(books)
      Queenbee::Event.create(
        date: Time.zone.now,
        status: 'success',
        message: I18n.t('queenbee.message'),
        metadata: metadata(books),
        alert: true
      )
    end

    def metadata(books)
      h = {}
      books.each do |book|
        h[book[:serie]] = tome_and_title(book)
      end
      h
    end

    def tome_and_title(book)
      [
        book[:title],
        I18n.t('book.tome_number', tome: book[:tome])
      ].reject(&:blank?).join(' - ')
    end
end
