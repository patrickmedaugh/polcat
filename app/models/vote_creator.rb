class VoteCreator

  def self.retrieve_recent_votes(govtrack_id)
    Thread.new{
      GovtrackService.retrieve_recent_votes(govtrack_id)
    }.value
  end
end
