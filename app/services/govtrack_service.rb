# require 'govtrack'
require 'ostruct'
class GovtrackService
  def self.retrieve_recent_votes(govtrack_id)
    response = get_vote_info(govtrack_id)
    descriptions = get_vote_description
    vote_records = []
    21.times do
      v = create_vote(response, descriptions)
      vote_records << v
    end
    vote_records.shift(1)
    vote_records
  end

  private

  def self.get_vote_info(govtrack_id)
    response = Net::HTTP.get_response(URI.parse("https://www.govtrack.us/api/v2/vote_voter/?person=#{govtrack_id}&order_by=-created&format=csv&fields=vote__id,created,option__value,vote__category,vote__chamber,vote__number&limit=21")).body
    response = response.split(/[,\r]/)
  end

  def self.get_vote_description
    descriptions = Net::HTTP.get_response(URI.parse("https://www.govtrack.us/api/v2/vote_voter/?person=400222&limit=20&format=csv&order_by=-created&fields=vote__question")).body
    descriptions = descriptions.split(/[\n]/)
  end

  def self.create_vote(response, descriptions)
    v = Vote.new
    v.id = response.shift
    v.created_at = response.shift
    v.vote = response.shift
    v.category = response.shift
    v.chamber = response.shift
    v.number = response.shift
    v.description = descriptions.shift
    v
  end
end

class Vote < OpenStruct
end
