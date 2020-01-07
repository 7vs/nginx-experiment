# frozen_string_literal: true

require 'rack'

# example rackApp
class RackApp
  def call(env)
    req = Rack::Request.new(env)

    [
      200,
      { 'Content-Type' => 'text/plain' },
      ["Hello from Rack inside web/app-2 with IP: #{req.ip}"]
    ]
  end
end

run RackApp.new
