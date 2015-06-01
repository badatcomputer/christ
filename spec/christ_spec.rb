require 'spec_helper'
describe Christ do
  before :each do
    @gist = Christ::Gist.new
  end
  it 'has a version number' do
    expect(Christ::VERSION).not_to be nil
  end

  describe "#github_connect" do
      it "returns an octokit object" do
          @gist.github_connect.should be_an_instance_of Octokit::Client
      end
  end
end
