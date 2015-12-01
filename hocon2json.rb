#!/usr/bin/env ruby

require 'hocon'
require 'json'

conf = Hocon::ConfigFactory.parse_string(STDIN.read)
rendered = conf.root.render(Hocon::ConfigRenderOptions.concise)
json = JSON.parse(rendered)

puts JSON.pretty_generate(json)

