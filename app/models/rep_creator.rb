class RepCreator

  attr_reader :state
  def initialize(state)
    @state = state
  end

  def create_reps
    CongressRecordService.new.search_by(@state).map do |rep|
    r = Representative.new
    # t.text = tweet.attrs[:text]

  end
end

class Representative < OpenStruct
end
