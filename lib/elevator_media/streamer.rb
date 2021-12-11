require 'http'
require 'json'


module ElevatorMedia
    class Streamer
        def initialize
        end
        def self.test
            "You got a joke for me?"
        end
        def self.getContent
           getTime = HTTP.get("http://worldtimeapi.org/api/ip").to_s
           object = JSON.parse(getTime)['datetime']
           html = "<div>#{object}</div>"
           puts html
           return html 
        end
        def self.getJoke
            joke = HTTP.get("https://v2.jokeapi.dev/joke/Pun?blacklistFlags=nsfw,religious,racist,sexist,explicit")
            response = JSON.parse(joke)['setup']
            pun = JSON.parse(joke)['delivery']
            html = "<div>#{response} <br> #{pun}</div>"
            puts html
            return html
        end
    end
end