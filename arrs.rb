# Issue number 66
require_relative './http_req.rb'

def get_url(id)
    return 'http://httpbingo.org/anything/' + id 
end

urls = Array.[](
    get_url("1"),
    get_url('2'),
    get_url('3'),
    get_url("4")
)


webp = WebPage.new

for url in urls do
    puts webp.get_res(url).status
end