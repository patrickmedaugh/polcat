class VotesmartService
  attr_reader :connection
  def call_api
    @connection = Hurley::Client.new()
  end
end
