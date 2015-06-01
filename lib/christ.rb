require "christ/version"
require "octokit"
module Christ
  class Gist
    def initialize
      file_content = ARGF.read
      file_name = ARGF.filename
      url = gist_url(file_content, file_name)
      puts "👼" + "  " + url
    end

    def github_connect
        Octokit::Client.new
    end

    def gist_url(file_content, file_name)
      content = Hash[file_name => Hash[content: file_content]]
      url = github_connect.create_gist({files: content})
      return url[:html_url]
    end

  end
end
