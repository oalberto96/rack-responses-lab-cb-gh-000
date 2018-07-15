require 'pry'


class Application
  def call(env)
    resp = Rack::Response.new
    actual_hour = Time.now.hour
    if actual_hour > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end


end
