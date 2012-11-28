require "rspec_api_documentation"
require "rspec_api_documentation/dsl"

RspecApiDocumentation.configure do |config|
  config.app = lambda do
    uri = URI.parse("http://example.net/callback")
    Net::HTTP.start(uri.host, uri.port) do |http|
      request = Net::HTTP::Post.new(uri.path)
      request.body = '{"message":"Something interesting happened!"}'
      request["Content-Type"] = "application/json"
      request["User-Agent"] = "InterestingThingApp"
      http.request request
    end
    [200, {}, []]
  end
end
