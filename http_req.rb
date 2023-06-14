# Issue number 50 and 60


require 'faraday'

class WebPage
    @@profile_url = 'http://httpbingo.org'

    def credit_card_url 
        return 'http://httpbingo.org/anything/my_credit_card'
    end

    def get_webpage
        resp = Faraday.get(@@profile_url)
        credit_card = Faraday.get(credit_card_url)
        puts resp.status
        puts credit_card.body
    end

    def get_res(url)
        return Faraday.get(url)
    end
end


webp = WebPage.new

webp.get_webpage



