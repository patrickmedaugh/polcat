require 'json'
require 'soda/client'

class CongressRecordService

  def call_api
    client = SODA::Client.new({:domain => "opendata.socrata.com/", :app_token => ENV['SODA_KEY']})
    client.get("45vt-g2zi")
  end

  def state
    
  end
end
