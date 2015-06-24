require 'rails_helper'

RSpec.describe SunlightService do
  describe "" do
    ss = SunlightService.new

    it "can find representatives by state" do
      VCR.use_cassette("rep_results") do
        reps = ss.find_by_state("MT")
        expect(reps['results'].first['bioguide_id']).to eq("Z000018")
      end
    end

    xit "can find representative by votesmart id" do
      VCR.use_cassette("rep_results") do
        rep = ss.find_by_votesmart("345")
        expect(rep['results'].first['bioguide_id']).to eq("C000984")
      end
    end

    it "can retrieve committees for a representative" do
      VCR.use_cassette("rep_results") do
        committees = ss.get_committees("C000984")
        expect(committees['count']).to eq(6)
      end
    end

    it "can retrieve floor updates for a representative" do
      VCR.use_cassette("rep_results") do
        floor_updates = ss.get_floor_updates("C000984")
        expect(floor_updates['page']).to eq({'count'=>0, 'per_page'=>20, 'page'=>1})
      end
    end

  end
end
