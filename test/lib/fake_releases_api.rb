# Mock API library to retrieve releases
#
# @example
#
#   FakeReleasesApi.new('01', '2020').call
#
# @param [String] Full month number
# @param [String] Full year number
#
# @return [Array]
#
class FakeReleasesApi
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def call
    YAML.load_file('./test/lib/releases.yml')
  end
end
