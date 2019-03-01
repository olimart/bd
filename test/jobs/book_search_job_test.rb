require 'test_helper'

class BookSearchJobTest < ActiveJob::TestCase
  test 'should enqueue job' do
    assert_enqueued_jobs 1 do
      BookSearchJob.perform_later('1234', 'fake_api')
    end
  end
end
