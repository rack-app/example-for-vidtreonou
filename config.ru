require "rack/app"
require "rack/app/front_end"

class Sso < Rack::App
   get '/ok' do
     'ok'
   end
end

class Website < Rack::App
  apply_extensions :front_end, :logger

  get "/:greeting" do
    logger.info "request.params -> #{request.params}"
    logger.info "params -> #{params}"
  end

end

class App < Rack::App
  apply_extensions :logger

  mount Sso, to: "/"
  mount Website, to: "/web"
end

run App
