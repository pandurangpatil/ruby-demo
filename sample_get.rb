# Issue number 69

require_relative './http_req.rb'

class Client
    def get_res
        url = 'http://httpbingo.org/anything/hello'
        webp = WebPage.new

        puts webp.get_res(url).status
    end
end


c = Client.new.get_res
