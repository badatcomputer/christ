require "christ/version"
require "octokit"
module Christ
  client = Octokit::Client.new
  input = {__FILE__ => {content: ARGF.read}}
  array = []
  array.push(input)
  url = client.create_gist({files: input})
  puts "👼" + "  " + url[:html_url]
end
