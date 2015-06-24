require 'sunlight'

class SunlightService
  attr_reader :api_key
  def initialize
    @api_key = ENV['SUNLIGHT_KEY']
  end

  def find_by_state(state)
    response = Net::HTTP.get_response(URI.parse("http://congress.api.sunlightfoundation.com/legislators?state=#{state}&apikey=#{@api_key}")).body
    JSON.parse(response)
  end

  def find_by_votesmart(votesmart)
    response = Net::HTTP.get_response(URI.parse("http://congress.api.sunlightfoundation.com/legislators?votesmart_id=#{votesmart}&apikey=#{@api_key}")).body
    JSON.parse(response)
  end

  def find_by_bioguide(bioguide)
    response = Net::HTTP.get_response(URI.parse("http://congress.api.sunlightfoundation.com/legislators?bioguide_id=#{bioguide}&apikey=#{@api_key}")).body
    JSON.parse(response)
  end

  def get_committees(bioguide)
    response = Net::HTTP.get_response(URI.parse("http://congress.api.sunlightfoundation.com/committees?member_ids=#{bioguide}&apikey=#{@api_key}")).body
    JSON.parse(response)
  end

  def get_floor_updates(bioguide)
    response = Net::HTTP.get_response(URI.parse("http://congress.api.sunlightfoundation.com/floor_updates?legislator_ids=#{bioguide}&apikey=#{@api_key}")).body
    JSON.parse(response)
  end

end
