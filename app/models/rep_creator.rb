class RepCreator
  attr_reader :service
  def self.service
    @service  ||=  SunlightService.new
  end

  def self.find_by_state(state)
    service.find_by_state(state)
  end

  def self.find_by_bioguide(bioguide)
    rep = service.find_by_bioguide(bioguide)
    rep["results"].first
  end

  def self.get_committees(bioguide)
    committees = service.get_committees(bioguide)
    committees["results"]
  end

  def self.get_floor_updates(bioguide)
    updates = service.get_floor_updates(bioguide)
    updates = updates["results"].first(5)
    updates = updates.map do |update|
      update["update"].force_encoding("ASCII-8BIT")
    end
  end

end
