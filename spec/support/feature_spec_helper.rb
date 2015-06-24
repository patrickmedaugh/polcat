module FeatureSpecHelper

 def mock_auth_hash
   OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
     "provider" => "twitter",
     "uid" => "12345",
     "info" => {
     "nickname" => "dinosaursrule",
     "image_url" => "image.jpg",
     "name" => "Denver",
       },
       "credentials" => {
         "token" => "12345"
       }
     })
 end
end
