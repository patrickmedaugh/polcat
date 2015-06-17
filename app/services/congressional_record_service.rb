require 'json'
require 'soda/client'

class CongressionalRecordService
  attr_reader :states

  def find_by_state(state)
    reps = call_api
    reps.select do |rep|
      rep.state == @states[state]
    end
  end

  private

  def call_api
    @states = {
      "AL" => "5acx-9hvx",
      "AK" => "j5kf-vzxt",
      "AZ" => "xfwa-fu7j",
      "AR" => "tdgu-vgw7",
      "CA" => "p93r-kyjs",
      "CO" => "w4xy-s5ve",
      "CT" => "js8j-pj38",
      "DE" => "pca7-mmfh",
      "FL" => "vq2b-ip8b",
      "GA" => "rmnf-mrnq",
      "HI" => "2pus-pvyj",
      "ID" => "ck9b-qste",
      "IL" => "kban-r8br",
      "IN" => "cbi3-2wfr",
      "IA" => "h4e5-v4w3",
      "KS" => "se7z-jf5i",
      "KY" => "bbcb-ifiz",
      "LA" => "afez-23wn",
      "ME" => "x6d2-urqi",
      "MD" => "jw68-fjpk",
      "MA" => "xn2i-iwnw",
      "MI" => "iawg-xwap",
      "MN" => "gfd6-essz",
      "MS" => "8znc-rc2e",
      "MO" => "fz8w-aqj8",
      "MT" => "7czm-mip6",
      "NE" => "z5tf-i7c2",
      "NV" => "bfqn-i5i8",
      "NH" => "rjbf-haci",
      "NJ" => "txp9-nx2p",
      "NM" => "pcwr-93r3",
      "NY" => "uh5n-43sp",
      "NC" => "kcxd-vzc4",
      "ND" => "znn9-6c4d",
      "OH" => "cbif-f7zt",
      "OK" => "xbeh-3rg5",
      "OR" => "csyk-jvic",
      "PA" => "ey9h-rbsa",
      "RI" => "qmf8-eb4u",
      "SC" => "tk68-d9vx",
      "SD" => "rc3a-pdu2",
      "TN" => "fnsw-e4v8",
      "TX" => "yi4z-tm5c",
      "UT" => "z9km-pj8r",
      "VT" => "z5e6-p4xj4",
      "VA" => "xuvw-bxk4",
      "WA" => "apqm-yxk6",
      "WV" => "sckj-bgta",
      "WI" => "2qyq-qmty",
      "WY" => "t7uj-bcjp"
      }
    client = SODA::Client.new({:domain => "opendata.socrata.com/", :app_token => ENV['SODA_KEY']})
    client.get("45vt-g2zi")
  end

end
# "AL" => "5acx-9hvx"
# "AK" => "j5kf-vzxt"
# "AZ" => "xfwa-fu7j"
# "AR" => "tdgu-vgw7"
# "CA" => "p93r-kyjs"
# "CO" => "w4xy-s5ve"
# "CT" => "js8j-pj38"
# "DE" => "pca7-mmfh"
# "FL" => "vq2b-ip8b"
# "GA" => "rmnf-mrnq"
# "HI" => "2pus-pvyj"
# "ID" => "ck9b-qste"
# "IL" => "kban-r8br"
# "IN" => "cbi3-2wfr"
# "IA" => "h4e5-v4w3"
# "KS" => "se7z-jf5i"
# "KY" => "bbcb-ifiz"
# "LA" => "afez-23wn"
# "ME" => "x6d2-urqi"
# "MD" => "jw68-fjpk"
# "MA" => "xn2i-iwnw"
# "MI" => "iawg-xwap"
# "MN" => "gfd6-essz"
# "MS" => "8znc-rc2e"
# "MO" => "fz8w-aqj8"
# "MT" => "z5tf-i7c2"
# "NE" => "bfqn-i5i8"
# "NV" => "rjbf-haci"
# "NH" => "txp9-nx2p"
# "NJ" => "pcwr-93r3"
# "NM" => "uh5n-43sp"
# "NY" => "kcxd-vzc4"
# "NC" => "znn9-6c4d"
# "ND" => "cbif-f7zt"
# "OH" => "xbeh-3rg5"
# "OK" => "csyk-jvic"
# "OR" => "ey9h-rbsa"
# "PA" => "qmf8-eb4u"
# "RI" => "tk68-d9vx"
# "SC" => "rc3a-pdu2"
# "SD" => "fnsw-e4v8"
# "TN" => "yi4z-tm5c"
# "TX" => "z9km-pj8r"
# "UT" => "z5e6-p4xj"
# "VT" => "xuvw-bxk4"
# "VA" => "apqm-yxk6"
# "WA" => "2qyq-qmty"
# "WV" => "sckj-bgta"
# "WI" => "2qyq-qmty"
# "WY" => "t7uj-bcjp"
