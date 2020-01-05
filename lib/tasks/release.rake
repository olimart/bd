namespace :release do
  desc 'Check for new releases'
  task check_for_new_releases: :environment do
    update_releases
  end

  private

    def update_releases
      date = Date.today
      return unless date == date.end_of_month
      month, year = date.month, date.year
      CheckForNewRelease.new(month, year).call
    end
end
