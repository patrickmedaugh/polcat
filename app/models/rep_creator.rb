class RepCreator
  attr_reader :service, :reps
  def self.service
    @service ||=  CongressionalRecordService.new
  end

  def self.generate(state)
    @reps = service.find_by_state(state)
    @reps.each do |rep|
      r = Rep.new
      r.lastname = rep.lastname
      r.state = rep.state
    end
  end

end

class Rep < OpenStruct
end
