require 'rails_helper'

RSpec.describe GovtrackService do
  describe "votes" do
    it "20 most recent returned for representative" do
      VCR.use_cassette("vote_results") do
        votes = GovtrackService.retrieve_recent_votes("400090")
        expect(votes.first.id).to eq("\n116698")
      end
    end

  end
end
