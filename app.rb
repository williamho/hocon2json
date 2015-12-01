require 'sinatra'
require 'hocon'
require 'json'

set show_exceptions: false

post '/' do
  content_type :json

  conf = Hocon::ConfigFactory.parse_string(request.body.string)
  conf.root.render(Hocon::ConfigRenderOptions.concise)
end

error do
  content_type :json

  { error: env['sinatra.error'].message }.to_json
end

