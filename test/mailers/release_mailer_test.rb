require 'test_helper'

class ReleaseMailerTest < ActionMailer::TestCase
  test 'new_publications_available' do
    books =  YAML.load_file('./test/lib/releases.yml')
    email = ReleaseMailer.new_publications_available(books)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal [ENV['CONTACT_EMAIL']], email.to
    assert_equal [ENV['DEFAULT_EMAIL_SENDER']], email.from
    assert_match 'Les maîtres des îles', email.body.to_s
  end
end
