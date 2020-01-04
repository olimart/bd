# Preview all emails at http://localhost:3000/rails/mailers/release_mailer
class ReleaseMailerPreview < ActionMailer::Preview
  def new_publications_available
    books = YAML.load_file('./test/lib/releases.yml')
    ReleaseMailer.new_publications_available(books)
  end
end
