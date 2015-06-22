class RepCreator
  attr_reader :service, :govtrack
  def self.service
    @service  ||=  SunlightService.new
  end

  def self.find_by_state(state)
    service.find_by_state(state)
  end

  def self.find_by_votesmart(votesmart)
    service.find_by_votesmart(votesmart)
  end

  def self.get_committees(bioguide)
    service.get_committees(bioguide)
  end

  def self.get_floor_updates(bioguide)
    updates = service.get_floor_updates(bioguide)
    updates["results"].first(5)
  end
end
