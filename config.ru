require "rack/app"
require "rack/app/front_end"

class Sso < Rack::App

   get '/ok' do
     'ok'
   end

end

class App < Rack::App

  apply_extensions :logger
  apply_extensions :front_end

   mount Sso, to: "/auth"

   get '/ok' do
     'ok'
   end
   
end

run App