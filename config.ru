require "rack/app"

class Sso < Rack::App
   get '/ok' do
     'ok'
   end
end

run Sso