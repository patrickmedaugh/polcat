class VoteCreator

  def self.retrieve_recent_votes(govtrack_id)
    GovtrackService.retrieve_recent_votes(govtrack_id)
  end
end
