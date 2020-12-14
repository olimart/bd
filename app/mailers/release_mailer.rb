class ReleaseMailer < ApplicationMailer
  helper :release

  def new_publications_available(books)
    @books = books
    mail to: ENV['CONTACT_EMAIL']
  end
end
