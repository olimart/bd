require 'test_helper'

class BookLookupJobTest < ActiveJob::TestCase
  test 'should enqueue job' do
    assert_enqueued_jobs 1 do
      BookLookupJob.perform_later('1234', 'fake_api')
    end
  end
end
