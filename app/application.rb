class Application

    def call(env)
    resp = Rack::Response.new

    time = Time.now.hour #uses ruby method to grab hour and store it in the time

    if time >= 12
        resp.write "Good Afternoon!"
    else
        resp.write "Good Morning!"
    end

    resp.finish
    end

end