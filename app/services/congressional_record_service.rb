require 'json'
require 'soda/client'

class CongressRecordService

  def call_api
    client = SODA::Client.new({:domain => "opendata.socrata.com/", :app_token => ENV['SODA_KEY']})
    response = client.get("45vt-g2zi")
    response
  end
end
