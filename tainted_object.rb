# Issue number 59

def put_req(api_endpoint, params)
    puts "Hitting " + api_endpoint + " with params: " + params
end

class TestClient
    def get_event_data(accountId)
        payload = accountId
        r = put_req(
            "https://localhost:8080/v3/users/me/",
            params=payload
        )
    end
end

t = TestClient.new

t.get_event_data("acc")