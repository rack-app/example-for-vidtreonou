require "rack/app"

class Sso < Rack::App
   get '/ok' do
     'ok'
   end
end

class App < Rack::App
  apply_extensions :logger

  mount Sso, to: "/"
end

run App