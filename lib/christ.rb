require "christ/version"
require "octokit"
module Christ
  class Gist
    def create_gist
      client = Octokit::Client.new
      input = {ARGF.filename => {content: ARGF.read}}
      array = []
      array.push(input)
      url = client.create_gist({files: input})
      puts "👼" + "  " + url[:html_url]
    end
  end
end
