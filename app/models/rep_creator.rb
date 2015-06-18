class RepCreator
  attr_reader :service
  def self.service
    @service ||=  CongressionalRecordService.new
  end

  def self.find_by_state(state)
    service.find_by_state(state)
  end

  def self.find_by_votesmart(votesmart)
    service.find_by_votesmart(votesmart)
  end

end
